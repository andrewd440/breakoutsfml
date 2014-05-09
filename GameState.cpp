#include "GameState.h"
#include "Utilities.h"

// Used for displaying success/failure text at end of game
const sf::Time CompletionDisplayInterval = sf::seconds(3.f);

GameState::GameState(StateStack& stack, sf::RenderWindow& window)
: State(stack, window)
, mWorld(window)
, mCompletionStatusText()
, mCompletionDisplayTimer(sf::Time::Zero)
{
	mCompletionStatusText.setFont(ServiceLocator::getFontHolder().get(Fonts::Main));
	mCompletionStatusText.setPosition(window.getSize().x / 2.f, window.getSize().y / 2.f);
	mCompletionStatusText.setCharacterSize(30);
}

bool GameState::update(sf::Time dt)
{
	if (!mWorld.isWorldComplete())
		mWorld.update(dt);
	else
	{
		// If World is complete, show result text
		mCompletionDisplayTimer += dt;
		if (mWorld.getMissionStatus() == World::Success)
			mCompletionStatusText.setString("You won!!!");
		else
			mCompletionStatusText.setString("Sorry, you failed.");
	}

	if (mCompletionDisplayTimer > CompletionDisplayInterval)
	{
		requestStackClear();
		requestStackPush(States::Title);
	}
		

	return true;
}

bool GameState::processEvent(const sf::Event& event)
{
	mWorld.handleInput(event);

	if (event.type == sf::Event::KeyPressed && event.key.code == sf::Keyboard::Escape)
		requestStackPush(States::Pause);

	return true;
}

void GameState::draw()
{
	mWorld.draw();

	if (mWorld.isWorldComplete())
	{
		sf::RenderWindow& window = getWindow();

		centerOrigin(mCompletionStatusText);
		window.draw(mCompletionStatusText);
	}
}