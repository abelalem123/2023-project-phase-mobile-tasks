import 'package:flutter/material.dart';

void main() {
  runApp(CircularCounterApp());
}

class CircularCounterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Circular Counter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int counter = 0;

  void incrementCounter() {
    setState(() {
      if (counter == 10) {
        counter = 0;
      } else {
        counter++;
      }
    });
  }

  void decrementCounter() {
    setState(() {
      if (counter == 0) {
        counter = 10;
      } else {
        counter--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Circular Counter'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Counter: $counter',
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: incrementCounter,
                  child: Text('Increment'),
                ),
                SizedBox(width: 16),
                ElevatedButton(
                  onPressed: decrementCounter,
                  child: Text('Decrement'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
