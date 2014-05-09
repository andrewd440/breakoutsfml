#include "World.h"
#include "Utilities.h"
#include "DataTables.h"

#include <sstream>

const sf::Time LevelTransitionInterval = sf::seconds(4.f);

namespace
{
	// Sets up table indexed by Level::ID, provides: Max Balls and Lives Per Ball
	const std::vector<LevelInfo> LevelTable = initializeLevelTable();
}

World::World(sf::RenderWindow& window)
: mWindow(window)
, mPlayer()
, mBalls()
, mBricks()
, mCurrentLevel(0)
, mIsChangingLevel(false)
, mLevelTransitionTimer(sf::Time::Zero)
, mSpawnedNewBricks(false)
, mLevelChangeText()
, mBallDisplayText()
, mRemainingBalls(0)
, mIsWorldComplete(false)
, mMissionStatus(World::Running)
, mBallTrails(Particle::Trail)
, mBackgroundBounceParticles(Particle::BackgroudBouncers)
, mBounceParticleEmitter(mBackgroundBounceParticles)
{
	auto windowBounds = mWindow.getSize();
	mPlayer.setPosition(windowBounds.x / 2.f, windowBounds.y - 50.f);

	// Set position for background particles
	mBounceParticleEmitter.setPosition(windowBounds.x / 2.f, windowBounds.y / 2.f);

	// Text to display on level changes
	mLevelChangeText.setFont(ServiceLocator::getFontHolder().get(Fonts::Main));
	mLevelChangeText.setPosition(window.getSize().x  / 2.f, window.getSize().y / 2.f);
	mLevelChangeText.setCharacterSize(30);

	// Balls Remaining display
	mBallDisplayText.setFont(ServiceLocator::getFontHolder().get(Fonts::Main));
	mBallDisplayText.setPosition(window.getSize().x - 200, window.getSize().y - 30);
	mBallDisplayText.setCharacterSize(20);

	loadNextLevel();
}

/// <summary>
/// Handles events and input for the game world.
/// </summary>
/// <param name="event">Game event.</param>
void World::handleInput(const sf::Event& event)
{
	mPlayer.handleInput();
}

/// <summary>
/// Updates the game world.
/// </summary>
/// <param name="dt">The delta time.</param>
void World::update(sf::Time dt)
{
	updateRemainingBalls();
	handleCollisions();
	removeDestroyedBalls();

	// If there are no more ball, but still bricks left, you lose
	if (mRemainingBalls <= 0 && !mBricks.empty())
	{
		mMissionStatus = World::Failed;
		mIsWorldComplete = true;
	}

	// If bricks are cleared and world is not complete, load next level
	if ((mBricks.empty() || mIsChangingLevel) && !mIsWorldComplete)
	{
		mIsChangingLevel = true;
		mLevelTransitionTimer += dt;
		loadNextLevel();
	}

	mPlayer.update(dt);
	
	for (auto& ball : mBalls)
	{
		ball->update(dt);
	}
	
	
	mBallTrails.update(dt);

	mBounceParticleEmitter.update(dt);
	mBackgroundBounceParticles.update(dt);

	for (auto& brick : mBricks)
		brick->update(dt);
}

/// <summary>
/// Draws the game world.
/// </summary>
void World::draw()
{
	mWindow.draw(mBackgroundBounceParticles);

	for (auto& ball : mBalls)
	{
		mWindow.draw(*ball);
	}

	mWindow.draw(mPlayer);
	mWindow.draw(mBallDisplayText);
	mWindow.draw(mBallTrails);

	for (auto& brick : mBricks)
		mWindow.draw(*brick);

	if (mIsChangingLevel)
	{
		centerOrigin(mLevelChangeText);
		mWindow.draw(mLevelChangeText);
	}
}

/// <summary>
/// Determines whether the World is complete.
/// </summary>
/// <returns></returns>
bool World::isWorldComplete() const
{
	return mIsWorldComplete;
}

World::MissionStatus World::getMissionStatus() const
{
	return mMissionStatus;
}

/// <summary>
/// Handles collisions with all game objects.
/// </summary>
void World::handleCollisions()
{
	for (auto& ball : mBalls)
	{
		auto ballRect = ball->getBoundingRect();
		float ballWidth = ballRect.width;
		float ballHeight = ballRect.height;
		float ballLeft = ballRect.left;
		float ballTop = ballRect.top;

		// Create four contact points for the ball
		sf::Vector2f ballLeftPoint(ballLeft, ballTop + (ballHeight / 2.f));					// Middle of left side
		sf::Vector2f ballRightPoint(ballLeft + ballWidth, ballTop + (ballHeight / 2.f));	// Middle of right side
		sf::Vector2f ballTopPoint(ballLeft + (ballWidth / 2.f), ballTop);					// Middle of top
		sf::Vector2f ballBottomPoint(ballLeft + (ballWidth / 2.f), ballTop + ballHeight);	// Middle of bottom

		// Ball/Paddle collisions
		auto playerRect = mPlayer.getBoundingRect();
		if (ballRect.intersects(playerRect))
		{
			// How the paddle velocity will affect the ball bounce
			float angleChangeFactor = 0;
			if (mPlayer.getVelocity().x > 0)
				angleChangeFactor = -10.f;
			else if (mPlayer.getVelocity().x < 0)
				angleChangeFactor = 10.f;

			// Adjust Ball angle for bounce
			if (playerRect.contains(ballBottomPoint))
			{
				ball->setAngle(360.f - ball->getAngle() + angleChangeFactor);
				ball->setPosition(ball->getPosition().x, mPlayer.getPosition().y - (mPlayer.getBoundingRect().height / 2.f) - (ballHeight / 2.f));
			}
			else if (playerRect.contains(ballLeftPoint) || playerRect.contains(ballRightPoint))
				ball->setAngle(180.f - ball->getAngle() + angleChangeFactor);
		}

		// Ball/Brick collisions
		for (auto itr = mBricks.begin(); itr != mBricks.end();)
		{
			auto brickRect = (*itr)->getBoundingRect();
			float ballAngle(ball->getAngle());

			if (ballRect.intersects(brickRect))
			{
				// If contact is on the left or right of the ball, adjust angle properly
				if (brickRect.contains(ballLeftPoint) || brickRect.contains(ballRightPoint))
					ball->setAngle(180.f - ball->getAngle());
				// If contact is on the top or top of the ball, adjust angle properly
				else if (brickRect.contains(ballTopPoint) || brickRect.contains(ballBottomPoint))
					ball->setAngle(360.f - ball->getAngle());
			}

			// If the angle of the ball changed, then we know a brick was hit. We damage that brick and if it is destroyed,
			// if so, we remove the brick from our brick container.
			if (ballAngle != ball->getAngle())
			{
				// Play a random bounce sound
				ServiceLocator::getSoundPlayer().play(static_cast<Sounds::ID>(randomInt(Sounds::BallCount)));
				(*itr)->damage(ball->getPower());
				if ((*itr)->isDestroyed())
					mBricks.erase(itr);
				break;
			}
			else
				itr++;
		}
	}
}

/// <summary>
/// Loads the next level.
/// </summary>
void World::loadNextLevel()
{

	// Show level completed text at beginning of level transition
	if (mCurrentLevel > 0 && mLevelTransitionTimer < LevelTransitionInterval / 2.f ) 
		mLevelChangeText.setString("Level complete!");

	// Spawn the bricks in at half the level transition interval
	if (mLevelTransitionTimer >= LevelTransitionInterval / 2.f && !mSpawnedNewBricks)
	{
		mSpawnedNewBricks = true;
		mBalls.clear();

		mCurrentLevel++;

		// Set loading level text
		mLevelChangeText.setString("Loading level " + toString(mCurrentLevel));

		// Load new bricks and spawn balls
		switch (mCurrentLevel)
		{
		case 1:
			mBricks = spawnLevelOne();
			loadBalls(Levels::One);
			break;
		case 2:
			mBricks = spawnLevelTwo();
			loadBalls(Levels::Two);
			break;
		case 3:
			mBricks = spawnLevelThree();
			loadBalls(Levels::Three);
			break;
		default:
			mLevelChangeText.setString("");
		}


	}

	// Close out level transition when the interval is closed
	if (mLevelTransitionTimer >= LevelTransitionInterval)
	{
		mIsChangingLevel = false;
		mSpawnedNewBricks = false;
		mLevelTransitionTimer = sf::Time::Zero;

		// If we passed to last level, we win
		if (mCurrentLevel > Levels::Count)
		{
			mIsWorldComplete = true;
			mMissionStatus = World::Success;
		}
	}

}

/// <summary>
/// Load Balls.
/// </summary>
/// <param name="number">The number of balls to load.</param>
void World::loadBalls(Levels::ID level)
{
	for (int i = 0; i < LevelTable[level].maxBalls; i++)
	{
		std::unique_ptr<Ball> ball(new Ball(LevelTable[level].livesPerBall, mBallTrails));
		mBalls.push_back(std::move(ball));
	}
}

/// <summary>
/// Removes the destroyed balls.
/// </summary>
void World::removeDestroyedBalls()
{
	for (auto itr = mBalls.begin(); itr != mBalls.end();)
	{
		if ((*itr)->isDestroyed())
			itr = mBalls.erase(itr);
		else
			itr++;
	}
}

/// <summary>
/// Updates the remaining balls and updates ball display.
/// </summary>
void World::updateRemainingBalls()
{
	int sum = 0;
	for (auto& ball : mBalls)
	{
		sum += ball->getLives();
	}
	
	mRemainingBalls = sum;
	mBallDisplayText.setString("Balls Remaining: " + toString(mRemainingBalls));
}
		