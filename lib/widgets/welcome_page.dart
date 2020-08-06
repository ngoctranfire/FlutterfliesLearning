import 'package:flutter/material.dart';

/// This is the welcome page class.
/// You notice here that we actually have 2 floating action buttons.
/// One is to increment and one to decrement the counter.
/// It is generally a good idea to separate your widgets out into components
/// so that they are extracted out into easily traceable components.
class WelcomePage extends StatefulWidget {
  WelcomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  void _decrementCounter() {
    setState(
      () {
        _counter--;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      // TODO: Notice that for the FLoating widget, I decided to inflate a row
      // with 2 Floating Action Buttons. One is to decrement the count
      // The other is to increment it. This is an example of how to use rows
      // Notice that the Floating Action Button has a "heroTag". It is good practice
      // to always include a HERO TAG FOR EACH AND EVERY Action Button to ensure
      // their uniqueness.
      floatingActionButton: Row(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          FloatingActionButton(
            heroTag: "Decrement",
            onPressed: _decrementCounter,
            tooltip: 'Decrement',
            child: Icon(Icons.remove),
          ),
          SizedBox(
            width: 20,
          ),
          FloatingActionButton(
            heroTag: "Increment",
            onPressed: _incrementCounter,
            tooltip: 'Increment',
            child: Icon(Icons.add),
          ),
        ],
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
