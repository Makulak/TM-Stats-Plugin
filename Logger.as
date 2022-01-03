namespace Logger {
    void Log(string data) {
        if(debug) {
            print(data);
        }
    }

    void Log(bool data) {
        if(debug) {
            if(data)
                print("true");
            else
                print("false");
        }
    }
}