import 'package:flutter/material.dart';
import 'package:travel_app/Screens/WelcomeScreen.dart';

void main() {

  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => new _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),

      initialRoute: WelcomeScreen.id, //ilk açılacak ekran
      routes: {
        WelcomeScreen.id: (context) => WelcomeScreen(),

      },
    );
  }
}