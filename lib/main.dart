import 'package:flutter/material.dart';
import 'package:flutterflies_learning/widgets/row_column_example.dart';
import 'package:flutterflies_learning/widgets/welcome_page.dart';

void main() {
  runApp(MyApp());
}

// This is the application entry point. Notice that, for its first
// home page, it actually inflates the "Welcome Page". All of the logic
// exists inside of the Welcome Page for now.
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
// TODO: Column out RowColumnExample or WelcomePage instead
      home: CounterPage(title: 'Counter Example'),
//      home: RowColumnExample(),
    );
  }
}
