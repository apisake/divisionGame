class Timer {
  int savedTime;
  int totalTime;
  int now;
  
  Timer(int tempTotalTime) {
    totalTime = tempTotalTime;
  }
  
  // method to check if the timer reach the end
  boolean isFinished() {
    now = millis();
    if (now - savedTime >= totalTime) {
      return true;
    } else {
      return false;
    }
  }
  
  // method to start the timer
  void start() {
    savedTime = millis();
  }
}