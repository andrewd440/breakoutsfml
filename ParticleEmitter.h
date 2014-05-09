#pragma once
#include "ParticleSystem.h"
#include "SFML/Graphics/Transformable.hpp"

/// <summary>
/// Represents an object to emit particles from a given particle system
/// </summary>
class ParticleEmitter : public sf::Transformable
{
public:
									ParticleEmitter(ParticleSystem& particleSystem);

	void							update(sf::Time dt);

private:
	void							emitParticle();

private:
	ParticleSystem&					mParticleSystem;

	const sf::Time					mEmitInterval;
	sf::Time						mEmitTimer;
};

