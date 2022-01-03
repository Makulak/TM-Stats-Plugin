#name "Statistics"
#author "ImPotatoSalad"
#category "Statistics"

bool debug = true;

void Main() {
    print("Main()");
}

void Update(float dt) {
    Logger::Log(InGame::IsPlayerInGame());
    // Stats::Test();
}