#pragma once
#include "SFML\Graphics\RenderWindow.hpp"
#include "Player.h"
#include "Ball.h"
#include "Brick.h"
#include "ParticleSystem.h"
#include <memory>

/// <summary>
/// Represents the game world
/// </summary>
class World
{
public:
	enum MissionStatus
	{
		Running,
		Success,
		Failed
	};
																World(sf::RenderWindow& window);

	void														handleInput(const sf::Event& event);
	void														update(sf::Time dt);
	void														draw();

	bool														isWorldComplete() const;
	World::MissionStatus										getMissionStatus() const;
	

private:
	void														handleCollisions();
	void														loadNextLevel();
	void														loadBalls(Levels::ID level);
	void														removeDestroyedBalls();
	void														updateRemainingBalls();

private:
	sf::RenderWindow&											mWindow;
	Player														mPlayer;
	std::vector<std::unique_ptr<Ball>>							mBalls;
	std::vector<std::unique_ptr<Brick>>							mBricks;

	unsigned int												mCurrentLevel;
	bool														mIsChangingLevel;
	sf::Time													mLevelTransitionTimer;
	bool														mSpawnedNewBricks;
	sf::Text													mLevelChangeText;

	int															mRemainingBalls;
	sf::Text													mBallDisplayText;

	bool														mIsWorldComplete;
	World::MissionStatus										mMissionStatus;

	ParticleSystem												mBallTrails;
	ParticleSystem												mBackgroundBounceParticles;
	ParticleEmitter												mBounceParticleEmitter;
};

