#include "ParticleEmitter.h"
#include "DataTables.h"

namespace
{
	// Sets up a table indexed by Particle::Type that contains: 
	//			Lifetime, Color, Creation Interval, Max Velocity
	const auto& Table = initializeParticleTable();
}

ParticleEmitter::ParticleEmitter(ParticleSystem& particleSystem)
: mParticleSystem(particleSystem)
, mEmitInterval(Table[particleSystem.getType()].creationInterval)
, mEmitTimer(sf::Time::Zero)
{
}

void ParticleEmitter::update(sf::Time dt)
{
	mEmitTimer += dt;

	while (mEmitTimer >= mEmitInterval)
	{
		mEmitTimer -= mEmitInterval;
		emitParticle();
	}
}

void ParticleEmitter::emitParticle()
{
	mParticleSystem.addParticle(getPosition());
}