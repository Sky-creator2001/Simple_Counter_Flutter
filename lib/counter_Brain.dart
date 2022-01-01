class Counter_Brain {
  int _counter = 0;

  String get_counter() {
    return _counter.toString();
  }

  void Increment() {
    if (_counter == 999) {
      _counter = 0;
    } else {
      _counter++;
    }
  }

  void Decrement() {
    if (_counter == 0) {
      _counter = 0;
    } else {
      _counter--;
    }
  }
}
