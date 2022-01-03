namespace Pb {
    uint GetPbTime() {
        auto app = cast<CTrackMania>(GetApp());
        auto map = app.RootMap;
        auto network = cast<CTrackManiaNetwork>(app.Network);
        auto scoreMgr = network.ClientManiaAppPlayground.ScoreMgr;

        return scoreMgr.Map_GetRecord_v2(network.PlayerInfo.Id, map.MapInfo.MapUid, "PersonalBest", "", "TimeAttack", "");
    }
}