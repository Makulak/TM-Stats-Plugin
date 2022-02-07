namespace Api {

    string NewPbEndpoint = "http://localhost:7071/api/post-new-pb";

    Net::HttpRequest PostNewPb(uint pbTime, string mapId, string userId) {
        print(pbTime);
        print(mapId);
        print(userId);
        return Net::HttpPost(NewPbEndpoint, "{\"PlayerId\":\"abcd\", \"MapId\":\"1234\", \"Time\":\"12345\"}", "application/json");
    }
}