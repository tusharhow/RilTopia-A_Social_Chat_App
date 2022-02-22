import 'package:flutter/material.dart';
import 'package:riltopia/screens/Auth/auth_screen.dart';

import 'common/theme/themes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: buildLightTheme(),
      // theme: buildDarkTheme(),
      home: const AuthScreen(),
    );
  }
}