import 'package:flutter/material.dart';
import 'colors.dart';
import 'constants.dart';

TextStyle rilStyle({weight = 400, size = 14}) {
  int wIndex = weight~/100; // ~/ Make sure its int
// TextStyle rilStyle(family,size) {
  return TextStyle(
    // fontFamily: family,
      fontFamily: 'Bahnschrift',
      fontWeight: FontWeight.values[wIndex],
      fontSize: size.toDouble());
}

TextStyle titleWithShadow = const TextStyle(
  // fontFamily: family,
    color: backgroundColor,
    fontFamily: 'Bahnschrift',
    fontWeight: FontWeight.w700,
    fontSize: 22,
    shadows: [
    Shadow(
    color: Colors.black38,
    blurRadius: 4,
    offset: Offset(0, 4)) ]
);

TextStyle subTitleWithShadow = const TextStyle(
  // fontFamily: family,
    color: backgroundColor,
    fontFamily: 'Bahnschrift',
    fontWeight: FontWeight.w600,
    fontSize: 20,
    shadows: [
      Shadow(
          color: Colors.black54,
          blurRadius: 1,
          offset: Offset(0, 2)) ]);