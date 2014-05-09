#pragma once

// Forward declaration of SFML classes
namespace sf
{
	class Texture;
	class Font;
	class Shader;
	class SoundBuffer;
}

// Provides identifier for Textures
namespace Textures
{
	enum ID
	{
		Title,
		Paddle,
		Ball,
		Bricks,
		Particle,
	};
}

// Provides identifier for Fonts
namespace Fonts
{
	enum ID
	{
		Main,
		Count
	};
}

// Provides identifier for Sounds
namespace Sounds
{
	enum ID
	{
		Ball1,
		Ball2,
		Ball3,
		BallCount,
		Wall1,
		Wall2,
		WallCount,
		Count
	};
}

// Provides identifier for Levels
namespace Levels
{
	enum ID
	{
		One,
		Two,
		Three,
		Count
	};
}

// Forward declaration and a few type definitions
template <typename Resource, typename Identifier>
class ResourceHolder;

typedef ResourceHolder<sf::Texture, Textures::ID> TextureHolder;
typedef ResourceHolder<sf::Font, Fonts::ID> FontHolder;
typedef ResourceHolder<sf::SoundBuffer, Sounds::ID> SoundHolder;