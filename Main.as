#name "Statistics"
#author "ImPotatoSalad"
#category "Statistics"

bool debug = true;

void Main() {
    print("Main()");

    while(true) {
        Stats::Test();
        yield();
        sleep(250);
    }
}

void Update(float dt) {
}