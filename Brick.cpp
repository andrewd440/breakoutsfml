#include "Brick.h"
#include "Utilities.h"
#include "DataTables.h"

namespace
{
	// Setup brick table indexed by Brick::Type that provides: hitpoints and texture rect.
	const std::vector<BrickInfo> Table = initializeBrickTable();
}

Brick::Brick(Brick::Type type, float positionX, float positionY)
: Entity()
, mSprite(ServiceLocator::getTextureHolder().get(Textures::Bricks), Table[type].textureRect)
, mType(type)
, mHitpoints(Table[type].hitpoints)
{
	setPosition(positionX, positionY);
	centerOrigin(mSprite);
	
	//updateTexture();
}

unsigned int Brick::getHitpoints() const
{
	return mHitpoints;
}

void Brick::setHitpoints(unsigned int hitpoints)
{
	mHitpoints = hitpoints;
}

/// <summary>
/// Damages brick by specified amount.
/// </summary>
/// <param name="damage">The damage.</param>
void Brick::damage(unsigned int damage)
{
	mHitpoints -= damage;
}

bool Brick::isDestroyed() const
{
	return mHitpoints <= 0;
}

void Brick::draw(sf::RenderTarget& target, sf::RenderStates states) const
{
	states.transform *= getTransform();

	target.draw(mSprite, states);
}

void Brick::update(sf::Time dt)
{
	Entity::update(dt);
}

unsigned int Brick::getType() const
{
	return mType;
}

sf::FloatRect Brick::getBoundingRect() const
{
	return getTransform().transformRect(mSprite.getGlobalBounds());
}