#pragma once

#include "SFML\System\Time.hpp"
#include "SFML\Window\Event.hpp"
#include "SFML\Graphics\RenderWindow.hpp"
#include "StateStack.h"
#include "ResourceHolder.h"
#include "ResourceIdentifiers.h"
#include "SoundPlayer.h"

/// <summary>
/// Initializing class for the game app
/// </summary>
class Application : sf::NonCopyable
{
public:
								Application();

	void						run();

private:
	
	void						update(sf::Time dt);
	void						processEvents();
	void						render();

	void						registerStates();
	void						loadResources();

private:
	FontHolder					mFonts;
	TextureHolder				mTextures;
	sf::RenderWindow			mWindow;
	StateStack					mStateStack;
	static const sf::Time		mTimePerFrame;

	SoundPlayer					mSoundPlayer;
};	

