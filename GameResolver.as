// Just a facade to TmUtils
namespace Game {
    bool IsGameModeIntro()
    {
        return TmUtils::Game::IsGameModeIntro();
    }

    bool IsGameModePlaying()
    {
        return TmUtils::Game::IsGameModePlaying();
    }

    bool IsGameModeEndRound()
    {
        return TmUtils::Game::IsGameModeEndRound();
    }

    bool IsGameModeFinish()
    {
        return TmUtils::Game::IsGameModeFinish();
    }

    CGameCtnChallengeInfo@ GetMapInfo()
    {
        return TmUtils::Game::GetMapInfo();
    }

    CTrackManiaPlayerInfo@ GetPlayerInfo()
    {
        return TmUtils::Trackmania::GetPlayerInfo();
    }
}