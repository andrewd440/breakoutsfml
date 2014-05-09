#include "StateStack.h"
#include <cassert>


StateStack::PendingAction::PendingAction(Action a, States::ID i = States::None)
: action(a)
, id(i)
{
}

StateStack::StateStack(sf::RenderWindow& window)
: mWindow(window)
, mPendingList()
, mStack()
, mFactories()
{

}

void StateStack::popState()
{
	mPendingList.push_back(PendingAction(Pop));
}

void StateStack::pushState(States::ID id)
{
	mPendingList.push_back(PendingAction(Push, id));
}

void StateStack::clearStates()
{
	mPendingList.push_back(PendingAction(Clear));
}

/// <summary>
/// Applies the pending changes.
/// </summary>
void StateStack::applyPendingChanges()
{
	// We only update the statestack at optimal times, 
	// so all requests go through a pending list and are then executed
	for (auto change : mPendingList)
	{
		switch (change.action)
		{
			case Push:
				mStack.push_back(createState(change.id));
				break;
			case Pop:
				mStack.pop_back();
				break;
			case Clear:
				mStack.clear();
				break;
		}
	}

	mPendingList.clear();
}


/// <summary>
/// Find the functor for the state and return the instantiated state
/// </summary>
/// <param name="id">The state identifier.</param>
/// <returns>Pointer to the new state</returns>
State::Ptr StateStack::createState(States::ID id)
{
	auto found = mFactories.find(id);
	assert(found != mFactories.end());

	return found->second();
}

void StateStack::update(sf::Time dt)
{
	// Update each state until one returns false in it's update function
	for (auto state = mStack.rbegin(); state != mStack.rend(); state++)
	{
		if (!(*state)->update(dt))
			break;
	}

	applyPendingChanges();
}

void StateStack::handleEvent(const sf::Event& event)
{
	for (auto state = mStack.rbegin(); state != mStack.rend(); state++)
	{
		if (!(*state)->processEvent(event))
			break;
	}

	applyPendingChanges();
}

void StateStack::draw()
{
	for (auto state = mStack.begin(); state != mStack.end(); state++)
		(*state)->draw();
}

bool StateStack::isEmpty() const
{
	return mStack.size() <= 0;
}