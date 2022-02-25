import 'package:flutter/material.dart';
import 'package:riltopia/common/theme/colors.dart';
import 'package:riltopia/common/theme/constants.dart';
import 'package:riltopia/common/theme/text.dart';
import 'package:riltopia/screens/boardingScreens/emailAuth/emailAuth_screen.dart';

import '../socials_screen.dart';

class SignInButton extends StatelessWidget {
  final String cardType;
  final Widget iconAsset;
  final double cardWidth;

  const SignInButton(
      {Key? key,
        required this.cardType,
        required this.iconAsset,
        required this.cardWidth,
      }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: cardWidth*0.85,
      child: Card(
        margin: const EdgeInsets.symmetric(vertical: 5),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(99)),
        child: Theme(
          data: ThemeData(
            splashColor: Colors.black26,
            // highlightColor: Colors.black.withOpacity(0.5),
          ),
          child: ListTile(
            leading: iconAsset,
            title: Text('With $cardType',
                style: subTitle()
                    .copyWith(color: cGrey300)
            ),
            onTap: () {
              kPushNavigator(context, const EmailAuthScreen());
            },
          ),
        ),
      ),
    );
  }
}