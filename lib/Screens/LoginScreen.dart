import 'package:flutter/material.dart';
import 'package:travel_app/constants.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
  static const String id = "LoginScreen";
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();

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
                image: new AssetImage("images/login_wallpaper.jpg"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            color: Color.fromRGBO(140, 165, 25, 0.60),
          ),
          Align(
            alignment: FractionalOffset(0.5, 0.20),
            child: Container(
              child: Text(
                "START ADVENTURE",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 40.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: height * 0.50, left: width * 0.125),
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  Container(
                    width: width * 0.75,
                    child: TextFormField(
                      decoration: kTextFieldDecoration.copyWith(
                          hintText: "Enter email",
                          prefixIcon: Icon(
                            Icons.account_box,
                            size: 30,
                            color: Colors.black,
                          )),
                      validator: (value) {
                        if (value.isEmpty) {
                          return 'Please enter some text';
                        }
                        return null;
                      },
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: height * 0.015),
                    child: Container(
                      width: width * 0.75,
                      child: TextFormField(
                        decoration: kTextFieldDecoration.copyWith(
                            hintText: "Enter password",
                            prefixIcon: Icon(
                              Icons.lock_outline,
                              size: 30,
                              color: Colors.black,
                            )),
                        obscureText: true,
                        validator: (value) {
                          if (value.isEmpty) {
                            return 'Please enter some text';
                          }
                          return null;
                        },
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: height * 0.02),
                    child: InkWell(
                      onTap: () {
                        if (_formKey.currentState.validate()) {
                          // If the form is valid, display a Snackbar.
                          Scaffold.of(context).showSnackBar(
                              SnackBar(content: Text('Processing Data')));
                        }
                      },
                      child: Container(
                        decoration: kBoxDecorationLoginButton,
                        width: width * 0.45,
                        height: height * 0.08,
                        child: Padding(
                          padding: EdgeInsets.only(top: height * 0.015),
                          child: Text(
                            "LOGIN",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 25),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
