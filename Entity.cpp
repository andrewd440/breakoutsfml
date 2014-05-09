#include "Entity.h"

Entity::Entity()
: mVelocity(0.f, 0.f)
{
}

Entity::~Entity()
{

}

sf::Vector2f Entity::getVelocity() const
{
	return mVelocity;
}

void Entity::setVelocity(sf::Vector2f velocity)
{
	mVelocity = velocity;
}

void Entity::setVelocity(float x, float y)
{
	mVelocity.x = x;
	mVelocity.y = y;
}

void Entity::accelerate(sf::Vector2f speed)
{
	mVelocity += speed;
}

void Entity::accelerate(float x, float y)
{
	mVelocity.x += x;
	mVelocity.y += y;
}

/// <summary>
/// Move entity based on current velocity.
/// </summary>
/// <param name="dt">The delta time.</param>
void Entity::update(sf::Time dt)
{
	move(mVelocity * dt.asSeconds());
}