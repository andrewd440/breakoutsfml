#pragma once
#include "Entity.h"
#include "SFML\Graphics\Sprite.hpp"
#include "ParticleSystem.h"
#include "ParticleEmitter.h"

/// <summary>
/// Represents the Ball object
/// </summary>
class Ball :
	public Entity
{
public:
							Ball(int lives, ParticleSystem& particlSystem);
	
	float					getAngle() const;
	void					setAngle(float angle);

	void					update(sf::Time dt);
	void					resetPosition();

	sf::FloatRect			getBoundingRect() const;

	unsigned int			getPower() const;
	unsigned int			getLives() const;

	bool					isDestroyed() const;
	void					markForDestroyed();

	void					reactToBounce();

private:
	void					handleWallCollision();
	void					checkIfBallIsLive();
	void					draw(sf::RenderTarget& target, sf::RenderStates states) const;

	float					linearVelocityX() const;
	float					linearVelocityY() const;

private:
	float					mAngle;
	sf::Vector2f			mSpawnPoint;
	sf::Sprite				mSprite;
	unsigned int			mPower;
	float					mDefaultVelocity;
	sf::Time				mMovementTimer;

	int						mLives;
	bool					mIsDestroyed;

	ParticleEmitter			mBallTrailEmitter;
};

