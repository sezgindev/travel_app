import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:travel_app/Screens/LoginScreen.dart';
import 'package:travel_app/Screens/RegistrationScreen.dart';
import 'package:travel_app/constants.dart';

class WelcomeScreen extends StatefulWidget {
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
  static const String id = "WelcomeScreen";
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(
        children: [
          new Container(
            decoration: new BoxDecoration(
              image: new DecorationImage(
                image: new AssetImage("images/welcome_background.jpg"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            color: Color.fromRGBO(250, 165, 25, 0.65),
          ),
          Align(
            alignment: FractionalOffset(0.5, 0.2),
            child: Container(
              child: Text(
                "TRAVEL BOOK",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 50.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Align(
            alignment: FractionalOffset(0.5, 0.29),
            child: Divider(
              color: Colors.white,
              thickness: 8.5,
              indent: 120,
              endIndent: 120,
            ),
          ),
          Align(
            alignment: FractionalOffset(0.5, 0.35),
            child: Text(
              "You must visit before travel",
              style: TextStyle(
                color: Colors.white,
                fontSize: 23.0,
              ),
            ),
          ),
          Align(
            alignment: FractionalOffset(0.5, 0.7),
            child: InkWell(
              onTap: (){
                Navigator.pushNamed(context, LoginScreen.id);
              },
              child: Container(
                width: width * 0.65,
                height: height * 0.095,
                child: Padding(
                  padding: EdgeInsets.only(top: height * 0.025),
                  child: Text(
                    "LOGIN",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 35.0, color: Colors.white),
                  ),
                ),
                decoration: kBoxDecorationWelcome,
              ),
            ),
          ),
          Align(
            alignment: FractionalOffset(0.5, 0.85),
            child: InkWell(
              onTap: (){
                Navigator.pushNamed(context, RegistrationScreen.id);
              },
              child: Container(
                width: width * 0.65,
                height: height * 0.095,
                child: Padding(
                  padding: EdgeInsets.only(top: height * 0.025),
                  child: Text(
                    "REGISTER",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 35.0, color: Colors.white),
                  ),
                ),
                decoration: kBoxDecorationWelcome.copyWith(
                  color: Color(0xFFD5A319),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
