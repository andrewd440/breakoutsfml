#pragma once
#include "C:\SFML\include\SFML\System\NonCopyable.hpp"
#include "ResourceIdentifiers.h"
#include "ResourceHolder.h"
#include "ResourceHolder.inl"
#include "SoundPlayer.h"

/// <summary>
/// Service Locator design pattern
/// Contains locators for Textures, Fonts, Window, and SoundPlayer
/// </summary>
class ServiceLocator : public sf::NonCopyable
{
public:
	static void										setTextureHolder(TextureHolder& textures);
	static TextureHolder&							getTextureHolder();

	static void										setFontHolder(FontHolder& fonts);
	static FontHolder&								getFontHolder();

	static void										setWindow(sf::RenderWindow& window);
	static sf::RenderWindow&						getWindow();

	static void										setSoundPlayer(SoundPlayer& soundPlayer);
	static SoundPlayer&								getSoundPlayer();

private:
	static TextureHolder*							mTextures;
	static FontHolder*								mFonts;
	static sf::RenderWindow*						mWindow;
	static SoundPlayer*								mSoundPlayer;
};

