#pragma once

#include <memory>
#include <vector>

#include "Brick.h"

/// <summary>
/// Structure for storing info on Brick types
/// </summary>
struct BrickInfo
{
	unsigned int hitpoints;
	sf::IntRect textureRect;
};

/// <summary>
/// Structure for storing info on Levels
/// </summary>
struct LevelInfo
{
	unsigned int maxBalls;
	unsigned int livesPerBall;
};

/// <summary>
/// Structure for storing info on particle types
/// </summary>
struct ParticleInfo
{
	sf::Time	lifetime;
	sf::Color	color;
	sf::Time	creationInterval;
	float		maxVelocity;
};

static const unsigned int				MAX_LEVELS = 3;
std::vector<std::unique_ptr<Brick>>		spawnLevelOne();
std::vector<std::unique_ptr<Brick>>		spawnLevelTwo();
std::vector<std::unique_ptr<Brick>>		spawnLevelThree();

std::vector<BrickInfo>					initializeBrickTable();
std::vector<LevelInfo>					initializeLevelTable();
std::vector<ParticleInfo>				initializeParticleTable();