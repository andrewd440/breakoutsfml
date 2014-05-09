#pragma once
#include "SFML\System\Vector2.hpp"
#include "SFML\System\Time.hpp"

/// <summary>
/// Represents a Particle object
/// </summary>
struct Particle
{
	enum Type
	{
		Trail,
		BackgroudBouncers,
		Count
	};

	sf::Vector2f	position;
	sf::Time		lifeTime;
	Particle::Type	type;

	float			angle;
	float			velocity;
};
