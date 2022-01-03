namespace Stats {

    uint pbTime = 4294967295; // Max Uint

    void Test() {
        if(Game::IsGameModeIntro())
        {
            print("Intro");
        }
        else if(Game::IsGameModePlaying())
        {
            
        }
        else if(Game::IsGameModeEndRound())
        {
            print("EndRound");
        }
        else if(Game::IsGameModeFinish())
        {
            uint currentPb = Pb::GetPbTime();
            print(Pb::GetPbTime());
            print(pbTime);
            if(currentPb <= pbTime) { // = just for testing purposes
                pbTime = currentPb;
                Api::PostNewPb(pbTime, Time::get_Now(), Game::GetMapInfo().MapUid, GetLocalLogin());
            }
            print("Finish");
        }
    }
}