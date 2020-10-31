import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final kBoxDecorationWelcome = BoxDecoration(
  color: Colors.transparent,
  border: Border.all(
    color: Colors.white,
    width: 2,
  ),
  borderRadius: BorderRadius.only(topLeft: Radius.circular(35)),
);

final kBoxDecorationLoginButton = BoxDecoration(
  color: Color(0xFFD5A319),
  border: Border.all(
    color: Colors.white,
    width: 0.5,
  ),
  //borderRadius: BorderRadius.only(topLeft: Radius.circular(35)),
);

const kTextFieldDecoration = InputDecoration(
  hintText: 'Enter a value',
  hintStyle: TextStyle(color: Colors.black),
  contentPadding: EdgeInsets.symmetric(vertical: 25.0, horizontal: 20.0),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(20.0)),
  ),
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.white, width: 2.5),
    borderRadius: BorderRadius.all(Radius.circular(20.0)),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.red, width: 2),
    borderRadius: BorderRadius.all(Radius.circular(20.0)),
  ),
);
