#include "Ball.h"
#include "Utilities.h"

const sf::Time MovementDelayInterval = sf::seconds(.1f);

Ball::Ball(int lives, ParticleSystem& particlSystem)
: Entity()
, mSprite(ServiceLocator::getTextureHolder().get(Textures::Ball))
, mSpawnPoint(ServiceLocator::getWindow().getSize().x / 2.f, ServiceLocator::getWindow().getSize().y / 2.f)
, mDefaultVelocity(500.f)
, mPower(1)
, mLives(lives)
, mMovementTimer(sf::Time::Zero)
, mIsDestroyed(false)
, mAngle()
, mBallTrailEmitter(particlSystem)
{
	centerOrigin(mSprite);	
	resetPosition();
}

void Ball::draw(sf::RenderTarget& target, sf::RenderStates states) const
{
	states.transform *= getTransform();

	target.draw(mSprite, states);
}

void Ball::resetPosition()
{
	// Reset the movement timer for a delay after the reset
	mMovementTimer = sf::Time::Zero;
	setPosition(mSpawnPoint);
	mAngle = 180;
}

unsigned int Ball::getLives() const
{
	return mLives;
}

void Ball::update(sf::Time dt)
{
	mMovementTimer += dt;

	// Provide updates to ball trail particles
	mBallTrailEmitter.setPosition(getPosition());
	mBallTrailEmitter.update(dt);

	if (mMovementTimer >= MovementDelayInterval)
	{
		checkIfBallIsLive();
		handleWallCollision();

		sf::Vector2f velocity;
		velocity.x = linearVelocityX() * mDefaultVelocity;
		velocity.y = linearVelocityY() * mDefaultVelocity;

		setVelocity(velocity);

		Entity::update(dt);
	}
}

/// <summary>
/// Handles the ball collisions with the wall.
/// </summary>
void Ball::handleWallCollision()
{
	sf::RenderWindow& window = ServiceLocator::getWindow();

	// If the ball hits the sides of the window, rebound its angle by 180
	if (getPosition().x + (mSprite.getLocalBounds().width / 2.f) > window.getSize().x
		|| getPosition().x - (mSprite.getLocalBounds().width / 2.f) < 0.f)
	{
		setAngle(180.f - getAngle());

		// Play collision sound
		ServiceLocator::getSoundPlayer().play(Sounds::Wall1);

		// Make sure ball is inside the screen
		if (getPosition().x + (mSprite.getLocalBounds().width / 2.f) > window.getSize().x)
			setPosition(window.getSize().x - mSprite.getLocalBounds().width / 2.f, getPosition().y);
		else
			setPosition(mSprite.getLocalBounds().width / 2.f, getPosition().y);

		// If angle is too flat, make it wider
		if ((getAngle() < 190.f && getAngle() > 170.f))
			setAngle(getAngle() - 20.f);
		else if (getAngle() < 10.f || getAngle() > 350.f)
			setAngle(getAngle() + 20.f);
	}
	// If the ball hits the top of the window, rebound angle by 360
	else if (getPosition().y - (mSprite.getLocalBounds().height / 2.f) < 0.f)
	{
		setAngle(360.f - getAngle());
		ServiceLocator::getSoundPlayer().play(Sounds::Wall2);

		if (getPosition().y + (mSprite.getLocalBounds().height / 2.f) < 0)
			setPosition(getPosition().x, 0);
	}

	// Keep angle from 0-360
	if (getAngle() > 360)
		setAngle( getAngle() - 360);
	else if (getAngle() < 0)
		setAngle(getAngle() + 360);
}

/// <summary>
/// Checks if ball is inbounds.
/// </summary>
void Ball::checkIfBallIsLive()
{
	sf::RenderWindow& window = ServiceLocator::getWindow();

	if (getPosition().y - (mSprite.getLocalBounds().height / 2.f) > window.getSize().y)
	{
		mLives--;
		if (mLives > 0)
			resetPosition();
		else
			markForDestroyed();
	}
}

void Ball::markForDestroyed()
{
	mIsDestroyed = true;
}

bool Ball::isDestroyed() const
{
	return mIsDestroyed;
}

float Ball::getAngle() const
{
	return mAngle;
}

void Ball::setAngle(float angle)
{
	mAngle = angle;
}

float Ball::linearVelocityX() const
{
	return std::cos(toRadian(360.f - mAngle));
}

float Ball::linearVelocityY() const
{
	return std::sin(toRadian(360.f - mAngle));
}

sf::FloatRect Ball::getBoundingRect() const
{
	return getTransform().transformRect(mSprite.getGlobalBounds());
}

/// <summary>
/// Gets the power/force of the ball.
/// </summary>
/// <returns></returns>
unsigned int Ball::getPower() const
{
	return mPower;
}