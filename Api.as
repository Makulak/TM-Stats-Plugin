namespace Api {

    string NewPbEndpoint = "http://127.0.0.1:3000/post-new-pb";

    Net::HttpRequest PostNewPb(uint pbTime, uint64 currentDateTime, string mapId, string userId) {
        return Net::HttpPost(NewPbEndpoint, "", "application/json");
    }
}