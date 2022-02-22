import 'package:flutter/material.dart';
import 'package:riltopia/common/theme/colors.dart';
import 'package:riltopia/common/theme/text.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;

    return Container(
      decoration: const BoxDecoration(gradient: boardingGradient),
      child: Scaffold(
          backgroundColor: kEmptyColor,
          body: Align(
            alignment: Alignment.center,
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: height * 0.1),
                Text('RilTopia',
                    style: titleWithShadow.copyWith(
                      fontSize: 38,
                    )),
                Text('A social chat app',
                    style: titleWithShadow.copyWith(
                        letterSpacing: 0.5,
                        wordSpacing: 1.25)
                    ),
                SizedBox(height: height * 0.15),
                Text('Log in with',
                    style: subTitleWithShadow
                ),
              ],
            ),
          )),
    );
  }
}
