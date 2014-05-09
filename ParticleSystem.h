#pragma once
#include "SFML\System\NonCopyable.hpp"
#include "SFML\Graphics\Drawable.hpp"
#include "Particle.h"
#include "SFML\Graphics\VertexArray.hpp"

#include <deque>

/// <summary>
/// Used to create particles of a given type through a particle emitter
/// </summary>
class ParticleSystem : public sf::NonCopyable, public sf::Drawable
{
public:
									ParticleSystem(Particle::Type type);
	void							addParticle(sf::Vector2f position);

	void							update(sf::Time dt);

	Particle::Type					getType() const;

private:
	void							updateVertexArray();
	void							addVertex(float positionX, float positionY, float textX, float textY, sf::Color color);
	void							draw(sf::RenderTarget& target, sf::RenderStates states) const;

	void							applyEffects(sf::Time dt);

	float							linearVelocityX(float& angle) const;
	float							linearVelocityY(float& angle) const;

private:
	std::deque<Particle>			mParticles;
	sf::VertexArray					mVertexArray;
	bool							mVertexNeedsUpdate;
	Particle::Type					mType;
	sf::Texture&					mTexture;
};

