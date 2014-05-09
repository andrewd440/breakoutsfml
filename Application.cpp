#include "Application.h"
#include "GameState.h"
#include "TitleState.h"
#include "PauseState.h"
#include "ServiceLocator.inl"

const sf::Time Application::mTimePerFrame = sf::seconds(1.f / 60.f);

/// <summary>
/// Initializes a new instance of the <see cref="Application"/> class.
/// </summary>
Application::Application()
: mWindow(sf::VideoMode(865, 956), "Drewski's Block Breaker", sf::Style::Close)
, mStateStack(mWindow)
, mFonts()
, mTextures()
, mSoundPlayer()
{
	registerStates();
	loadResources();

	// Start statestack at title screen
	mStateStack.pushState(States::Title);
}


/// <summary>
/// Starts the main game loop.
/// </summary>
void Application::run()
{
	sf::Clock clock;
	sf::Time elapsedTime = sf::Time::Zero;

	while (mWindow.isOpen())
	{
		elapsedTime += clock.restart();

		while (elapsedTime >= mTimePerFrame)
		{
			update(mTimePerFrame);
			processEvents();
			elapsedTime -= mTimePerFrame;
		}

		render();
	}
}


/// <summary>
/// Updates all game objects.
/// </summary>
/// <param name="dt">The delta time.</param>
void Application::update(sf::Time dt)
{
	mStateStack.update(dt);
	mSoundPlayer.removeInactiveSounds();
}


/// <summary>
/// Processes the events.
/// </summary>
void Application::processEvents()
{
	sf::Event event;
	while (mWindow.pollEvent(event))
	{
		mStateStack.handleEvent(event);

		switch (event.type)
		{
			case sf::Event::Closed:
				mWindow.close();
		}
	}

	if (mStateStack.isEmpty())
		mWindow.close();
}

/// <summary>
/// Renders this all game objects.
/// </summary>
void Application::render()
{
	mWindow.clear();
	mStateStack.draw();
	mWindow.display();
}

/// <summary>
/// Registers the game states.
/// </summary>
void Application::registerStates()
{
	mStateStack.registerState<GameState>(States::Game);
	mStateStack.registerState<TitleState>(States::Title);
	mStateStack.registerState<PauseState>(States::Pause);
}

/// <summary>
/// Loads fonts and textures used in the game.
/// </summary>
void Application::loadResources()
{
	// Set ServiceLocator window
	ServiceLocator::setWindow(mWindow);

	// Load all game fonts and set ServiceLocator font holder
	mFonts.load(Fonts::Main, "Media/Fonts/Sansation.ttf");
	ServiceLocator::setFontHolder(mFonts);

	// Load all game textures and set ServiceLocator texture holder
	mTextures.load(Textures::Title, "Media/Textures/TitleScreen.png");
	mTextures.load(Textures::Paddle, "Media/Textures/Paddles.png");
	mTextures.load(Textures::Ball, "Media/Textures/Ball.png");
	mTextures.load(Textures::Bricks, "Media/Textures/BrickTextures.png");
	mTextures.load(Textures::Particle, "Media/Textures/Particle.png");
	ServiceLocator::setTextureHolder(mTextures);

	// Set ServiceLocator SoundPlayer
	ServiceLocator::setSoundPlayer(mSoundPlayer);
}