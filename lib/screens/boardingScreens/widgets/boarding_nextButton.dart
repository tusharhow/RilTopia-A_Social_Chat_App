import 'package:flutter/material.dart';
import 'package:riltopia/common/theme/constants.dart';
import 'package:riltopia/common/theme/text.dart';

class NextButton extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;

  const NextButton(
      {
        Key? key,
        required this.title,
        required this.onPressed,
      }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 6),
      width: kMediaQuery(context).size.width,
      height: 65,
      child: ElevatedButton(
        style: ButtonStyle(
          overlayColor: MaterialStateProperty.all(Colors.white12),
          shape: MaterialStateProperty.all(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(14))),
        ),
          onPressed: onPressed,
          child: Text(title, style: subTitle(),)),
    );
  }
}
