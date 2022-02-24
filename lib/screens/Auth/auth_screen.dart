import 'package:flutter/material.dart';
import 'package:riltopia/common/theme/colors.dart';
import 'package:riltopia/common/theme/text.dart';
import 'package:riltopia/widgets/riltopia_title.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Container(
      decoration: const BoxDecoration(gradient: boardingGradient),
      child: Scaffold(
          backgroundColor: kEmptyColor,
          body: Column(
            children: [
              RiltopiaTitle(height),
              Text('Log in with',
                  style: subTitle(shadow: true)
              ),
              const SizedBox(height: 10),
              SignInButton('Google', Icons.shop, width),
              SignInButton('Facebook', Icons.shop, width),
              SignInButton('Email', Icons.shop, width),
            ],
          )),
    );
  }
}
