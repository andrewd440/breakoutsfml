#include "SoundPlayer.h"
#include "ResourceHolder.inl"
#include "SFML\Audio\Listener.hpp"

SoundPlayer::SoundPlayer()
: mSoundHolder()
, mSounds()
{
	// Load sound files
	mSoundHolder.load(Sounds::Ball1, "Media/Sounds/Ball1.wav");
	mSoundHolder.load(Sounds::Ball2, "Media/Sounds/Ball2.wav");
	mSoundHolder.load(Sounds::Ball3, "Media/Sounds/Ball3.wav");
	mSoundHolder.load(Sounds::Wall1, "Media/Sounds/Wall1.wav");
	mSoundHolder.load(Sounds::Wall2, "Media/Sounds/Wall2.wav");
}


/// <summary>
/// Plays the specified effect.
/// </summary>
/// <param name="effect">The effect.</param>
void SoundPlayer::play(Sounds::ID effect)
{
	mSounds.push_back(sf::Sound());

	sf::Sound& sound = mSounds.back();

	sound.setBuffer(mSoundHolder.get(effect));
	sound.play();

}

/// <summary>
/// Removes the inactive sounds.
/// </summary>
void SoundPlayer::removeInactiveSounds()
{
	mSounds.remove_if([](const sf::Sound& sound)
	{
		return sound.getStatus() == sf::Sound::Stopped;
	});
}