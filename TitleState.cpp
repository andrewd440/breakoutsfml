#include "TitleState.h"
#include "ServiceLocator.h"
#include "Utilities.h"

TitleState::TitleState(StateStack& stack, sf::RenderWindow& window)
: State(stack, window)
, mBackgroundSprite(ServiceLocator::getTextureHolder().get(Textures::Title))
, mText()
, mTextFlashTimer(sf::Time::Zero)
, mIsTextVisible(true)
, mTextFlashInterval(sf::seconds(.5f))
{
	mText.setFont(ServiceLocator::getFontHolder().get(Fonts::Main));
	mText.setString("Pressed Someum' Fool");
	mText.setCharacterSize(40);
	mText.setColor(sf::Color::White);
	mText.setPosition(window.getSize().x / 2.f, window.getSize().y - 70.f);
	centerOrigin(mText);
}


bool TitleState::update(sf::Time dt)
{
	// Create flashing text set to an interval
	mTextFlashTimer += dt;

	if (mTextFlashTimer >= mTextFlashInterval)
	{
		mIsTextVisible = !mIsTextVisible;
		mTextFlashTimer = sf::Time::Zero;
	}

	return true;
}

/// <summary>
/// Processes events and input.
/// </summary>
/// <param name="event">The event.</param>
/// <returns></returns>
bool TitleState::processEvent(const sf::Event& event)
{
	// If a key is pressed, exit title screen and launch game
	if (sf::Keyboard::isKeyPressed(sf::Keyboard::A))
	{
		requestStackPop();
		requestStackPush(States::Game);
	}
	return true;
}

void TitleState::draw()
{
	sf::RenderWindow& window = getWindow();
	window.draw(mBackgroundSprite);

	if (mIsTextVisible)
		window.draw(mText);
}