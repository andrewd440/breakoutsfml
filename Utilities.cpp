#include "Utilities.h"
#include <cmath>
#include <random>
#include <ctime>
#include <sstream>

void centerOrigin(sf::Sprite& sprite)
{
	auto bounds = sprite.getLocalBounds();
	sprite.setOrigin(bounds.width / 2.f, bounds.height / 2.f);
}

void centerOrigin(sf::Text& text)
{
	auto bounds = text.getLocalBounds();
	text.setOrigin(bounds.width / 2.f, bounds.height / 2.f);
}

/// <summary>
/// Convert degrees to radians.
/// </summary>
/// <param name="degrees">The degrees.</param>
/// <returns></returns>
float toRadian(float degrees)
{
	return (degrees * (3.14159265359 / 180));
}

namespace
{
	std::default_random_engine createRandomEngine()
	{
		auto seed = static_cast<unsigned long>(std::time(nullptr));
		return std::default_random_engine(seed);
	}

	auto RandomEngine = createRandomEngine();
}

/// <summary>
/// Produces a random integer.
/// </summary>
/// <param name="exclusiveMax">The exclusive maximum.</param>
/// <returns></returns>
int randomInt(int exclusiveMax)
{
	std::uniform_int_distribution<> distr(0, exclusiveMax - 1);
	return distr(RandomEngine);
}