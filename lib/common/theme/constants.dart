import 'package:flutter/material.dart';

ThemeData kTheme(context) => Theme.of(context);
NavigatorState kNavigator(context) => Navigator.of(context);

Future<dynamic> kPushNavigator(context, screen, {bool replace = false}) =>
    replace ?
    Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => screen))
    : Navigator.of(context).push(
        MaterialPageRoute(builder: (context) => screen));