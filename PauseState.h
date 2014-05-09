#pragma once
#include "State.h"
#include "SFML\Graphics\Text.hpp"
#include "SFML\Graphics\RectangleShape.hpp"

/// <summary>
/// Represents the pause state
/// </summary>
class PauseState :
	public State
{
public:
								PauseState(StateStack& stack, sf::RenderWindow& window);
	virtual bool				update(sf::Time dt);
	virtual bool				processEvent(const sf::Event& event);
	virtual void				draw();

private:
	sf::RectangleShape			mBackground;
	sf::Text					mPauseText;
};

