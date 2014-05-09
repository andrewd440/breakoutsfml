#pragma once
#include "C:\SFML\include\SFML\System\NonCopyable.hpp"
#include "SFML\Audio\Sound.hpp"
#include "SFML\Audio\SoundBuffer.hpp"

#include "ResourceHolder.h"
#include "ResourceIdentifiers.h"

#include <list>

/// <summary>
/// Represents the sound player
/// </summary>
class SoundPlayer : public sf::NonCopyable
{
public:
							SoundPlayer();
	void					play(Sounds::ID sound);
	void					removeInactiveSounds();

private:
	SoundHolder				mSoundHolder;
	std::list<sf::Sound>	mSounds;
};

