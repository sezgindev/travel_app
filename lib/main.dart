import 'package:flutter/material.dart';
import 'package:travel_app/Screens/DetailScreen.dart';
import 'package:travel_app/Screens/HomeScreen.dart';

import 'package:travel_app/Screens/LoginScreen.dart';
import 'package:travel_app/Screens/MainScreen.dart';
import 'package:travel_app/Screens/ProfileScreen.dart';
import 'package:travel_app/Screens/RegistrationScreen.dart';
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
      home: MainScreen(),

      // initialRoute: WelcomeScreen.id, //ilk açılacak ekran
      routes: {
        WelcomeScreen.id: (context) => WelcomeScreen(),
        UserProfile.id: (context) => UserProfile(),
        LoginScreen.id: (context) => LoginScreen(),
        RegistrationScreen.id: (context) => RegistrationScreen(),
        HomeScreen.id: (context) => HomeScreen(),
        DetailScreen.id: (context) => DetailScreen(),
      },
    );
  }
}
