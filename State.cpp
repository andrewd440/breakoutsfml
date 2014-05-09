#include "State.h"
#include "StateStack.h"

State::State(StateStack& stack, sf::RenderWindow& window)
: mStack(&stack)
, mWindow(window)
{
}

State::~State()
{
}

void State::requestStackPush(States::ID id)
{
	mStack->pushState(id);
}

void State::requestStackPop()
{
	mStack->popState();
}

void State::requestStackClear()
{
	mStack->clearStates();
}

sf::RenderWindow& State::getWindow() const
{
	return mWindow;
}