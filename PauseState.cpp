#include "PauseState.h"
#include "ServiceLocator.h"
#include "Utilities.h"

PauseState::PauseState(StateStack& stack, sf::RenderWindow& window)
: State(stack, window)
, mBackground(ServiceLocator::getWindow().getView().getSize())
, mPauseText("Press Esc to Continue", ServiceLocator::getFontHolder().get(Fonts::Main))
{
	mPauseText.setPosition(window.getSize().x / 2.f, window.getSize().y / 2.f);
	mPauseText.setCharacterSize(30);
	centerOrigin(mPauseText);

	mBackground.setFillColor(sf::Color(255, 255, 255, .25));
}

bool PauseState::update(sf::Time dt)
{
	// Return false so the statestack doesn't update states behind this one
	return false;
}

bool PauseState::processEvent(const sf::Event& event)
{
	if (event.type != sf::Event::KeyPressed)
		return false;

	if (event.key.code == sf::Keyboard::Escape)
		requestStackPop();

	return false;
}

void PauseState::draw()
{
	sf::RenderWindow& window = getWindow();

	window.draw(mBackground);
	window.draw(mPauseText);
}