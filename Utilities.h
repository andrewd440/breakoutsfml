#pragma once

#include "SFML\Graphics\Sprite.hpp"
#include "SFML\Graphics\Text.hpp"

// Center origin on text and sprites
void centerOrigin(sf::Sprite& sprite);
void centerOrigin(sf::Text& text);

float toRadian(float degrees);

int randomInt(int exclusiveMax);

template <typename T>
std::string toString(const T& obj)
{
	std::stringstream ss;
	ss << obj;
	return ss.str();
}