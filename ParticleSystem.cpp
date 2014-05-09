#include "ParticleSystem.h"
#include "DataTables.h"
#include "SFML\Graphics\Vertex.hpp"
#include "ServiceLocator.h"
#include "Utilities.h"

namespace
{	
	// Sets up a table indexed by Particle::Type that contains: 
	//			Lifetime, Color, Creation Interval, Max Velocity
	const auto Table = initializeParticleTable();
}

ParticleSystem::ParticleSystem(Particle::Type type)
: mParticles()
, mVertexArray(sf::Quads)
, mVertexNeedsUpdate(false)
, mType(type)
, mTexture(ServiceLocator::getTextureHolder().get(Textures::Particle))
{

}

/// <summary>
/// Adds a particle.
/// </summary>
/// <param name="position">The position.</param>
void ParticleSystem::addParticle(sf::Vector2f position)
{
	mVertexNeedsUpdate = true;

	Particle particle;
	particle.position = position;
	particle.type = mType;
	particle.lifeTime = Table[mType].lifetime;

	// Trail Particles don't need velocity or angle since they dont move
	if (mType != Particle::Trail)
	{
		particle.velocity = (randomInt(2) + 1) * Table[mType].maxVelocity;
		particle.angle = randomInt(361);
	}

	mParticles.push_back(particle);
}

Particle::Type ParticleSystem::getType() const
{
	return mType;
}

void ParticleSystem::draw(sf::RenderTarget& target, sf::RenderStates states) const
{
	states.texture = &mTexture;
	target.draw(mVertexArray, states);
}

void ParticleSystem::update(sf::Time dt)
{
	for (auto& particle : mParticles)
	{
		particle.lifeTime -= dt;
	}

	// Particles will be order by increasing lifetime, so pop until lifetime > 0
	while (!mParticles.empty() && mParticles.front().lifeTime <= sf::seconds(0.f))
	{
		mParticles.pop_front();
		mVertexNeedsUpdate = true;
	}

	// If this is a moving particle system, the vertex needs to constantly update
	// due to moving particles
	if (mType != Particle::Trail)
	{
		applyEffects(dt);
		mVertexNeedsUpdate = true;
	}

	if (mVertexNeedsUpdate)
	{
		updateVertexArray();
		mVertexNeedsUpdate = false;
	}
}

/// <summary>
/// Updates the vertex array.
/// </summary>
void ParticleSystem::updateVertexArray()
{
	sf::Vector2f size(mTexture.getSize());
	sf::Vector2f half(size / 2.f);

	mVertexArray.clear();

	// Add updated particles to vertex array
	for (const Particle& particle : mParticles)
	{
		// Fade the particle as its lifetime decreases
		sf::Color color = Table[mType].color;
		float ratio = particle.lifeTime.asSeconds() / Table[mType].lifetime.asSeconds();
		color.a = static_cast<sf::Uint8>(255 * std::max(ratio, 0.f));

		addVertex(particle.position.x - half.x, particle.position.y - half.y, 0.f, 0.f, color);
		addVertex(particle.position.x + half.x, particle.position.y - half.y, size.x, 0.f, color);
		addVertex(particle.position.x + half.x, particle.position.y + half.y, size.x, size.y, color);
		addVertex(particle.position.x - half.x, particle.position.y + half.y, 0.f, size.y, color);
	}
}

/// <summary>
/// Add a vertex to the vertex array.
/// </summary>
/// <param name="positionX">The x position.</param>
/// <param name="positionY">The y position.</param>
/// <param name="textX">The x texture coordinate.</param>
/// <param name="textY">The texture coordinate.</param>
/// <param name="color">The color.</param>
void ParticleSystem::addVertex(float positionX, float positionY, float textX, float textY, sf::Color color)
{
	sf::Vertex vertex;

	vertex.color = color;
	vertex.position.x = positionX;
	vertex.position.y = positionY;
	vertex.texCoords.x = textX;
	vertex.texCoords.y = textY;

	mVertexArray.append(vertex);
}

/// <summary>
/// Applies effects to each particle based on Particle::Type.
/// </summary>
/// <param name="dt">The delta time.</param>
void ParticleSystem::applyEffects(sf::Time dt)
{
	sf::RenderWindow& window = ServiceLocator::getWindow();

	sf::Vector2f size(mTexture.getSize());
	sf::Vector2f half(size / 2.f);

	for (Particle& particle : mParticles)
	{
		if (mType == Particle::BackgroudBouncers)
		{
			// If the particle hits the sides of the window, rebound its angle by 180
			if (particle.position.x + half.x > window.getSize().x || particle.position.x - half.x < 0.f)
			{
				particle.angle = 180.f - particle.angle;
				// If angle is too flat, make it wider
				if ((particle.angle < 200.f && particle.angle > 160.f))
					particle.angle = particle.angle + 20.f;
				else if (particle.angle < 20.f && particle.angle > 340.f)
					particle.angle = particle.angle - 20.f;
			}

			// If the particle hits the top of the window, rebound angle by 360
			else if (particle.position.y - half.y < 0.f || particle.position.y + half.y > window.getSize().y)
			{
				particle.angle = 360.f - particle.angle;
			}
		}

		// Update particle position based on angle and velocity
		particle.position.x += particle.velocity * linearVelocityX(particle.angle) * dt.asSeconds();
		particle.position.y += particle.velocity * linearVelocityY(particle.angle) * dt.asSeconds();
	}
	
}

float ParticleSystem::linearVelocityX(float& angle) const
{
	return std::cos(toRadian(360.f - angle));
}

float ParticleSystem::linearVelocityY(float& angle) const
{
	return std::sin(toRadian(360.f - angle));
}