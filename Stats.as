namespace Stats {

    uint pbTime = 4294967295; // Max Uint

    bool sent = false; // Jusdt for debug - remove after removing <= pbTime

    void Test() {
        if(Game::IsGameModeIntro())
        {
        }
        else if(Game::IsGameModePlaying())
        {
            sent = false;
        }
        else if(Game::IsGameModeEndRound())
        {
        }
        else if(Game::IsGameModeFinish())
        {
            uint currentPb = Pb::GetPbTime();
            string playerId = Game::GetPlayerInfo().Login;
            if(currentPb <= pbTime && !sent) { // <= just for testing purposes
                sent = true;
                pbTime = currentPb;
                Api::PostNewPb(pbTime, Game::GetMapInfo().MapUid, playerId);
            }
        }
    }
}