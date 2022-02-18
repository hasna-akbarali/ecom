import 'package:flutter/material.dart';

ThemeData theme() {
  return ThemeData(
    scaffoldBackgroundColor: const Color(0xFFFDEFF4),
    fontFamily: 'Avenir',
    textTheme: textTheme(),
  );
}
TextTheme textTheme() {
  return const TextTheme(
    headline1: TextStyle(
        fontSize: 32,
        fontFamily: 'Avenir',
        fontWeight: FontWeight.bold,
        color: Colors.black),
    headline2: TextStyle(
        fontSize: 24,
        fontFamily: 'Avenir',
        fontWeight: FontWeight.bold,
        color: Colors.black),
    headline3: TextStyle(
        fontSize: 18,
        fontFamily: 'Avenir',
        fontWeight: FontWeight.bold,
        color: Colors.black),
    headline4: TextStyle(
        fontSize: 16,
        fontFamily: 'Avenir',
        fontWeight: FontWeight.bold,
        color: Colors.black),
    headline5: TextStyle(
        fontSize: 14,
        fontFamily: 'Avenir',
        fontWeight: FontWeight.bold,
        color: Colors.black),
    headline6: TextStyle(
        fontSize: 14,
        fontFamily: 'Avenir',
        fontWeight: FontWeight.normal,
        color: Colors.black),
    bodyText1: TextStyle(
        fontSize: 12,
        fontFamily: 'Avenir',
        fontWeight: FontWeight.normal,
        color: Colors.black),
    bodyText2: TextStyle(
        fontSize: 10,
        fontFamily: 'Avenir',
        fontWeight: FontWeight.normal,
        color: Colors.black),
  );
}