#pragma once
#include "State.h"
#include "SFML\Graphics\Sprite.hpp"
#include "SFML\Graphics\Text.hpp"
#include "SFML\System\Time.hpp"

/// <summary>
/// Represents the title screen for game
/// </summary>
class TitleState : public State
{
public:
	TitleState(StateStack& stack, sf::RenderWindow& window);

	virtual bool				update(sf::Time dt);
	virtual bool				processEvent(const sf::Event& event);
	virtual void				draw();

private:
	sf::Sprite					mBackgroundSprite;
	sf::Text					mText;
	sf::Time					mTextFlashTimer;
	const sf::Time				mTextFlashInterval;
	bool						mIsTextVisible;
};

