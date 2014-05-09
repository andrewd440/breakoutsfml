#pragma once
#include "SFML\System\NonCopyable.hpp"
#include "SFML\Graphics\Drawable.hpp"
#include "SFML\Graphics\Transformable.hpp"
#include "SFML\System\Time.hpp"

#include "ServiceLocator.h"

/// <summary>
/// Base class for visible game objects
/// </summary>
class Entity : public sf::NonCopyable,
	public sf::Drawable, public sf::Transformable
{
public:
							Entity();
	virtual					~Entity();

	sf::Vector2f			getVelocity() const;
	void					setVelocity(sf::Vector2f velocity);
	void					setVelocity(float x, float y);

	void					accelerate(sf::Vector2f speed);
	void					accelerate(float x, float y);

	virtual void			update(sf::Time dt);

private:
	virtual void			draw(sf::RenderTarget& target, sf::RenderStates states) const = 0;

private:
	sf::Vector2f			mVelocity;
};

