#pragma once

#include "SFML\Graphics\RenderWindow.hpp"
#include "StateIdentifier.h"
#include <memory>

class StateStack;

/// <summary>
/// Based class for States
/// </summary>
class State
{
public:
	typedef std::unique_ptr<State> Ptr;

public:
								State(StateStack& stack, sf::RenderWindow& window);
	virtual						~State();
	
	virtual bool				update(sf::Time dt) = 0;
	virtual bool				processEvent(const sf::Event& event) = 0;
	virtual void				draw() = 0;

protected:
	void						requestStackPush(States::ID id);
	void						requestStackPop();
	void						requestStackClear();

	sf::RenderWindow&			getWindow() const;

private:
	sf::RenderWindow&			mWindow;
	StateStack*					mStack;
};

