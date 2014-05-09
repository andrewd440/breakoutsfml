#pragma once
#include <map>
#include <memory>
#include <stdexcept>
#include <string>
#include <cassert>

#include "SFML\Graphics.hpp"

/// <summary>
/// Template class used to hold and retreive heavy resources used by the app.
/// Such as Textures, Sounds, Music
/// </summary>
template <typename Resource, typename Identifier>
class ResourceHolder
{
public:
	void					load(Identifier id, const std::string& filename);

	Resource&				get(Identifier id);
	const Resource&			get(Identifier id) const;
		
private:
	std::map<Identifier, std::unique_ptr<Resource>>		mResources;
};

