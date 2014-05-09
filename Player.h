#pragma once
#include "Entity.h"
#include "SFML\Graphics\Sprite.hpp"

/// <summary>
/// Represents the player
/// </summary>
class Player : public Entity
{
public:
	Player();

	void						update(sf::Time dt);
	void						handleInput();

	sf::FloatRect				getBoundingRect() const;

private:
	void						draw(sf::RenderTarget& target, sf::RenderStates states) const;
	void						handleWallCollision();

private:
	sf::Sprite					mSprite;
	const float					mMaxVelocity;
};

