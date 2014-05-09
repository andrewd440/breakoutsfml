/// <summary>
/// Retrieve a resource based on an Identifier
/// </summary>
/// <param name="id">The identifier.</param>
/// <returns></returns>
template <typename Resource, typename Identifier>
const Resource& ResourceHolder<Resource, Identifier>::get(Identifier id) const
{
	auto found = mResources.find(id);
	assert(found != mResources.end());

	return *found->second;
}

/// <summary>
/// Retrieve a resource based on an Identifier
/// </summary>
/// <param name="id">The identifier.</param>
/// <returns></returns>
template <typename Resource, typename Identifier>
Resource& ResourceHolder<Resource, Identifier>::get(Identifier id)
{
	auto found = mResources.find(id);
	assert(found != mResources.end());

	return *found->second;
}


/// <summary>
/// Loads a resource by an Identifier and filename.
/// </summary>
/// <param name="id">The identifier.</param>
/// <param name="filename">The filename.</param>
template <typename Resource, typename Identifier>
void ResourceHolder<Resource, Identifier>::load(Identifier id, const std::string& filename)
{
	std::unique_ptr<Resource> resource(new Resource());
	if (!resource->loadFromFile(filename))
		throw
		std::runtime_error("ResourceHolder::load - Failed to load " + filename);

	auto insert = mResources.insert(std::make_pair(id, std::move(resource)));
	assert(insert.second);
}