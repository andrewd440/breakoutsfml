#pragma once
#include "State.h"
#include "World.h"

/// <summary>
/// Represents main gameplay state
/// </summary>
class GameState :
	public State
{
public:
	GameState(StateStack& stack, sf::RenderWindow& window);

	virtual bool				update(sf::Time dt);
	virtual bool				processEvent(const sf::Event& event);
	virtual void				draw();

private:
	void						displayCompletionStatus() const;

private:
	World						mWorld;

	sf::Text					mCompletionStatusText;
	sf::Time					mCompletionDisplayTimer;
};

