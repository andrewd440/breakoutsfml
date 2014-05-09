#pragma once
#include "C:\SFML\include\SFML\System\NonCopyable.hpp"
#include "StateIdentifier.h"
#include "State.h"
#include "ResourceIdentifiers.h"

#include <vector>
#include <map>
#include <functional>

/// <summary>
/// Used to manage various states in the game
/// </summary>
class StateStack : public sf::NonCopyable
{
public:
	// Actions for the statestack
	enum Action
	{
		Pop,
		Push,
		Clear,
	};
	explicit					StateStack(sf::RenderWindow& window);

	void						update(sf::Time dt);
	void						handleEvent(const sf::Event& event);
	void						draw();
	
	template <typename T>
	void registerState(States::ID id);

	// Called by outside code for changing the current statestack
	void						popState();
	void						pushState(States::ID id);
	void						clearStates();
	bool						isEmpty() const;

private:
	void						applyPendingChanges();

	// Called from applyPendingChanges when a state is pushed
	State::Ptr					createState(States::ID);

private:

	// Structure for applying actions to the statestack at the correct time during game update
	struct PendingAction
	{
											PendingAction(Action a, States::ID i);
		Action								action;
		States::ID							id;
	};

private:
	sf::RenderWindow&						mWindow;
	std::vector<State::Ptr>					mStack;
	std::vector<PendingAction>				mPendingList;
	std::map<States::ID,
		std::function<State::Ptr()>>		mFactories;

};


/// <summary>
/// Registers the game state.
/// </summary>
/// <param name="id">The state identifier.</param>
template <typename T>
void StateStack::registerState(States::ID id)
{
	// Map functors for states that are registered
	mFactories[id] = [this]()
	{
		return State::Ptr(new T(*this, mWindow));
	};
}