class Counter{
  int _counter = 0;
  int get count => _counter;

  void incrementCounter(){
    _counter++;
  }

  void decremetnCounter(){
    _counter--;
  }

  void reset(){
    _counter = 0;
  }
}