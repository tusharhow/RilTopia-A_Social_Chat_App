import 'package:flutter/material.dart';
import 'package:riltopia/common/theme/colors.dart';
import 'package:riltopia/common/theme/text.dart';
import 'package:riltopia/screens/boardingScreens/A_socialsScreen/socials_screen.dart';
import 'package:riltopia/screens/boardingScreens/widgets/boarding_nextButton.dart';
import 'package:riltopia/screens/boardingScreens/widgets/boarding_textField.dart';
import 'package:riltopia/widgets/riltopia_title.dart';
import 'package:flutter_svg/flutter_svg.dart';


class EmailAuthScreen extends StatelessWidget {
  const EmailAuthScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    var emailController = TextEditingController();
    var passController = TextEditingController();

    return Container(
      decoration: const BoxDecoration(gradient: boardingGradient),
      padding: EdgeInsets.symmetric(horizontal: width * 0.15 / 2),
      child: Scaffold(
            backgroundColor: kEmptyColor,
            body: Column(
              children: [
                RiltopiaTitle(height),
                // Text('Log in with', style: subTitle(shadow: true)),
                const SizedBox(height: 10),

                RilTextField(
                  hintText: 'Enter your mail',
                  validator: (val) {},
                  controller: emailController,
                ),

                RilTextField(
                  hintText: 'Enter your password',
                  validator: (val) {},
                  controller: passController,
                ),

                NextButton(
                  title: 'Join us',
                  onPressed: (){},
                ),
              ],
            ),
            ),
    );
  }
}