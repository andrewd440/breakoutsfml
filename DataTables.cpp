#include "DataTables.h"
#include "Particle.h"

const sf::Vector2f BrickSize(60.f, 30.f);
const float TopLevelPadding = 50.f;
const float SideLevelPadding = 75.f;

const Brick::Type None = Brick::None;
const Brick::Type Blue = Brick::Blue;
const Brick::Type Green = Brick::Green;
const Brick::Type Red = Brick::Red;
const Brick::Type Purple = Brick::Purple;

/// <summary>
/// Creates the brick set of level one.
/// </summary>
/// <returns>Vector of unique pointers to bricks</returns>
std::vector<std::unique_ptr<Brick>> spawnLevelOne()
{
	const int levelRows = 3,
				levelCol = 12;

	Brick::Type levelStructure[levelRows][levelCol] =
	{ { None, Green, Green, Green, Green, Green, Green, Green, Green, Green, Green, None }
	, { None, None, Blue, Blue, Blue, Blue, Blue, Blue, Blue, Blue, None, None }
	, { None, None, None, Red, Red, Red, Red, Red, Red, None, None, None } };

	std::vector<std::unique_ptr<Brick>> bricks;

	for (int j = 0; j < levelRows; j++)
	{
		for (int i = 0; i < levelCol; i++)
		{
			if (levelStructure[j][i] != None)
			{
				std::unique_ptr<Brick> brick(new Brick(levelStructure[j][i], SideLevelPadding + i * BrickSize.x, TopLevelPadding + j * BrickSize.y));
				bricks.push_back(std::move(brick));
			}
		}
	}

	return std::move(bricks);
}

/// <summary>
/// Creates the brick set of level two.
/// </summary>
/// <returns>Vector of unique pointers to bricks</returns>
std::vector<std::unique_ptr<Brick>> spawnLevelTwo()
{
	Brick::Type levelStructure[4][12] =
	{ { None, None, None, Purple, Purple, Purple, Purple, Purple, Purple, None, None, None }
	, { None, None, Red, Blue, Blue, Blue, Blue, Blue, Blue, Red, None, None }
	, { None, Red, Blue, Blue, Blue, None, None, Blue, Blue, Blue, Red, None }
	, { Red, Blue, Blue, Blue, Blue, None, None, Blue, Blue, Blue, Blue, Red } };

	std::vector<std::unique_ptr<Brick>> bricks;

	for (int j = 0; j < 4; j++)
	{
		for (int i = 0; i < 12; i++)
		{
			if (levelStructure[j][i] != None)
			{
				std::unique_ptr<Brick> brick(new Brick(levelStructure[j][i], SideLevelPadding + i * BrickSize.x, TopLevelPadding + j * BrickSize.y));
				bricks.push_back(std::move(brick));
			}
		}
	}

	return std::move(bricks);
}

/// <summary>
/// Creates the brick set of level three.
/// </summary>
/// <returns>Vector of unique pointers to bricks</returns>
std::vector<std::unique_ptr<Brick>> spawnLevelThree()
{
	Brick::Type levelStructure[7][12] =
	{ { Green, Green, Green, Green, Green, Green, Green, Green, Green, Green, Green, Green }
	, { Green, Blue, None, None, Blue, Blue, Blue, Blue, None, None, Blue, Green }
	, { Green, Blue, None, None, Blue, Blue, Blue, Blue, None, None, Blue, Green }
	, { Green, Blue, Blue, Blue, Blue, Blue, Blue, Blue, Blue, Blue, Blue, Green }
	, { Purple, Purple, Purple, Purple, Purple, None, None, Purple, Purple, Purple, Purple, Purple }
	, { Purple, Purple, Purple, Purple, Purple, None, None, Purple, Purple, Purple, Purple, Purple } 
	, { Purple, Purple, Purple, Purple, Purple, None, None, Purple, Purple, Purple, Purple, Purple } };

	std::vector<std::unique_ptr<Brick>> bricks;

	for (int j = 0; j < 7; j++)
	{
		for (int i = 0; i < 12; i++)
		{
			std::unique_ptr<Brick> brick(new Brick(levelStructure[j][i], SideLevelPadding + i * BrickSize.x, TopLevelPadding + j * BrickSize.y));
			bricks.push_back(std::move(brick));
		}
	}

	return std::move(bricks);
}

/// <summary>
/// Initializes a table for info on each type of brick.
/// </summary>
/// <returns>Vector indexed by Brick::Type</returns>
std::vector<BrickInfo> initializeBrickTable()
{
	std::vector<BrickInfo> brickTable(Brick::Count);

	brickTable[Brick::Green].hitpoints = 1;
	brickTable[Brick::Green].textureRect = sf::IntRect(0, 59, 59, 29);

	brickTable[Brick::Blue].hitpoints = 2;
	brickTable[Brick::Blue].textureRect = sf::IntRect(0, 119, 59, 29);

	brickTable[Brick::Red].hitpoints = 2;
	brickTable[Brick::Red].textureRect = sf::IntRect(0, 29, 59, 29);

	brickTable[Brick::Purple].hitpoints = 3;
	brickTable[Brick::Purple].textureRect = sf::IntRect(0, 0, 59, 29);

	return brickTable;
}

/// <summary>
/// Initializes a table for info on each level.
/// </summary>
/// <returns>Vector indexed by Level::ID</returns>
std::vector<LevelInfo> initializeLevelTable()
{
	std::vector<LevelInfo> levelTable(Levels::Count);

	levelTable[Levels::One].maxBalls = 10;
	levelTable[Levels::One].livesPerBall = 3;

	levelTable[Levels::Two].maxBalls = 6;
	levelTable[Levels::Two].livesPerBall = 2;

	levelTable[Levels::Three].maxBalls = 3;
	levelTable[Levels::Three].livesPerBall = 5;

	return levelTable;
}

/// <summary>
/// Initializes a table for info on each Particle type.
/// </summary>
/// <returns>Vector indexed by Particle::Type</returns>
std::vector<ParticleInfo> initializeParticleTable()
{
	std::vector<ParticleInfo> particleTable(Particle::Count);

	particleTable[Particle::Trail].lifetime = sf::seconds(.2f);
	particleTable[Particle::Trail].color = sf::Color::Yellow;
	particleTable[Particle::Trail].creationInterval = sf::seconds(1.f / 70.f);
	particleTable[Particle::Trail].maxVelocity = 0.f;

	particleTable[Particle::BackgroudBouncers].lifetime = sf::seconds(5.f);
	particleTable[Particle::BackgroudBouncers].color = sf::Color(55, 55, 55);
	particleTable[Particle::BackgroudBouncers].creationInterval = sf::seconds(.1f);
	particleTable[Particle::BackgroudBouncers].maxVelocity = 200.f;

	return particleTable;
}