import 'package:flutter/material.dart';
import 'package:riltopia/common/theme/colors.dart';
import 'package:riltopia/common/theme/text.dart';
import 'package:riltopia/screens/boardingScreens/socialsScreen/widgets/signin_button.dart';
import 'package:riltopia/widgets/riltopia_title.dart';
import 'package:flutter_svg/flutter_svg.dart';


class SocialsScreen extends StatelessWidget {
  const SocialsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Container(
      decoration: const BoxDecoration(gradient: boardingGradient),
      // padding: const EdgeInsets.symmetric(horizontal: 24),
      padding: EdgeInsets.symmetric(horizontal: width * 0.15 / 2),
      child: Scaffold(
          backgroundColor: kEmptyColor,
          body: Column(
            children: [
              RiltopiaTitle(height),
              Text('Log in with', style: subTitle(shadow: true)),
              const SizedBox(height: 10),

              SignInButton('Google',
                  Image.asset('assets/icons/google-icon.png',
                    height: 40,), width),

              SignInButton('Facebook',
                  Image.asset('assets/icons/facebook-icon.png',
                    height: 40,), width),

              SignInButton('Email',
                  const Icon(Icons.mail, size: 40,
                      color: cRilDeepPurple), width),
            ],
          )),
    );
  }
}
