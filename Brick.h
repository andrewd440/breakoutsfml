#pragma once
#include "Entity.h"

/// <summary>
/// Represents a Brick object.
/// </summary>
class Brick :
	public Entity
{
public:
	enum Type
	{
		None,
		Green,
		Blue,
		Purple,
		Red,
		Count
	};

							Brick(Brick::Type type, float x, float y);

	unsigned int			getType() const;
	sf::FloatRect			getBoundingRect() const;

	unsigned int			getHitpoints() const;
	void					setHitpoints(unsigned int hitpoints);

	void					damage(unsigned int damage);
	bool					isDestroyed() const;

	void					update(sf::Time dt);

private:
	void					draw(sf::RenderTarget& target, sf::RenderStates states) const;

private:
	Brick::Type				mType;
	sf::Sprite				mSprite;
	unsigned int			mHitpoints;
};

