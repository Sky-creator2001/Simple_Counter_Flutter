import 'package:flutter/material.dart';

import 'counter_Brain.dart';

Counter_Brain counter_brain = Counter_Brain();

void main() {
  runApp(
    const Counter_Page(),
  );
}

class Counter_Page extends StatelessWidget {
  const Counter_Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey.shade300,
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.green.shade800,
          toolbarHeight: 100.0,
          title: const Align(
            alignment: Alignment.center,
            child: Text(
              'Counter',
              style: TextStyle(
                fontSize: 50.0,
                fontFamily: 'Pacifico',
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        body: Counter_Page_Full(),
      ),
    );
  }
}

class Counter_Page_Full extends StatefulWidget {
  @override
  _Counter_Page_FullState createState() => _Counter_Page_FullState();
}

class _Counter_Page_FullState extends State<Counter_Page_Full> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Expanded(
              flex: 5,
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  counter_brain.get_counter(),
                  style: const TextStyle(
                    fontFamily: 'pacifico',
                    fontSize: 150.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.all(
                  10.0,
                ),
                child: FlatButton(
                  color: Colors.grey.shade400,
                  child: const Text(
                    '+',
                    style: TextStyle(
                      fontFamily: 'pacifico',
                      fontWeight: FontWeight.bold,
                      fontSize: 50.0,
                    ),
                  ),
                  onPressed: () {
                    setState(() {
                      counter_brain.Increment();
                    });
                  },
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.all(
                  10.0,
                ),
                child: FlatButton(
                  color: Colors.grey.shade400,
                  child: const Text(
                    '-',
                    style: TextStyle(
                      fontFamily: 'pacifico',
                      fontWeight: FontWeight.bold,
                      fontSize: 50.0,
                    ),
                  ),
                  onPressed: () {
                    setState(() {
                      counter_brain.Decrement();
                    });
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
