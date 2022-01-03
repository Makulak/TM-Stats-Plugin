namespace InGame {
    bool IsPlayerInGame() {
        auto playground = cast<CSmArenaClient>(GetApp().CurrentPlayground);

        if(!IsValidPlayground(playground))
            return false;

        auto player = cast<CSmPlayer>(playground.GameTerminals[0].GUIPlayer);

        return IsValidPlayer(@player);
    }

    bool IsValidPlayground(CSmArenaClient @playground) {
        return playground !is null
			&& playground.Arena !is null
			&& playground.Map !is null
			&& playground.GameTerminals.Length >= 0
			&& playground.GameTerminals[0].UISequence_Current == CGamePlaygroundUIConfig::EUISequence::Playing
			&& cast<CSmPlayer>(playground.GameTerminals[0].GUIPlayer) !is null;
    }

    bool IsValidPlayer(CSmPlayer @player) {
        return player !is null
        && player.ScriptAPI !is null
        && player.CurrentLaunchedRespawnLandmarkIndex != uint(-1); // Spectrate player
    }
}