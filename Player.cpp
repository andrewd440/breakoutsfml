#include "Player.h"
#include "Utilities.h"


Player::Player()
: Entity()
, mSprite(ServiceLocator::getTextureHolder().get(Textures::Paddle))
, mMaxVelocity(800.f)
{
	centerOrigin(mSprite);
}

void Player::draw(sf::RenderTarget& target, sf::RenderStates states) const
{
	states.transform *= getTransform();
	target.draw(mSprite, states);
}

void Player::update(sf::Time dt)
{
	Entity::update(dt);

	handleWallCollision();
}

/// <summary>
/// Handles input on the player.
/// </summary>
void Player::handleInput()
{
	if (sf::Keyboard::isKeyPressed(sf::Keyboard::Left))
	{
		setVelocity(-mMaxVelocity, 0.f);
	}
	else if (sf::Keyboard::isKeyPressed(sf::Keyboard::Right))
	{
		setVelocity(mMaxVelocity, 0.f);
	}
	else
	{
		setVelocity(0.f, 0.f);
	}
}

/// <summary>
/// Handles the wall-player collision.
/// </summary>
void Player::handleWallCollision()
{
	sf::RenderWindow& window = ServiceLocator::getWindow();

	// If the paddle out of the window, reset it's velocity and 
	// set it back in the window
	if (getPosition().x + (mSprite.getLocalBounds().width / 2.f) > window.getSize().x)
	{
		setVelocity(0.f, 0.f);
		setPosition(window.getSize().x - (mSprite.getLocalBounds().width / 2.f), getPosition().y);
	}
	else if (getPosition().x - (mSprite.getLocalBounds().width / 2.f) < 0.f)
	{
		setVelocity(0.f, 0.f);
		setPosition(mSprite.getLocalBounds().width / 2.f, getPosition().y);
	}
}

sf::FloatRect Player::getBoundingRect() const
{
	return getTransform().transformRect(mSprite.getGlobalBounds());
}