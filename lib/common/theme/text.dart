import 'package:flutter/material.dart';
import 'colors.dart';
import 'constants.dart';

Shadow noTxtShadow = Shadow(
    color: Colors.black.withOpacity(0.00),
    blurRadius: 0,
    offset: const Offset(0, 0));

Shadow smallTxtShadow = const Shadow(
    color: Colors.black38,
    blurRadius: 4,
    offset: Offset(0, 4));

Shadow bigTxtShadow = const Shadow(
    color: Colors.black54,
    blurRadius: 1,
    offset: Offset(0, 2));

TextStyle title({bool shadow = false}) => TextStyle(
  // fontFamily: family,
    color: backgroundColor,
    fontFamily: 'Bahnschrift',
    fontWeight: FontWeight.w700,
    fontSize: 22,
    shadows: [ shadow ? smallTxtShadow : noTxtShadow]);

TextStyle subTitle({bool shadow = false}) => TextStyle(
    color: backgroundColor,
    fontFamily: 'Bahnschrift',
    fontWeight: FontWeight.w600,
    fontSize: 20,
    shadows: [ shadow ? bigTxtShadow : noTxtShadow]);

TextStyle hint({bool shadow = false}) => TextStyle(
    color: cGrey300,
    fontFamily: 'Bahnschrift',
    fontSize: 16,
    shadows: [ shadow ? smallTxtShadow : noTxtShadow]);