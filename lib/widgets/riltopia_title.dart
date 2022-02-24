import 'package:flutter/material.dart';
import 'package:riltopia/common/theme/text.dart';

class RiltopiaTitle extends StatelessWidget {
  final double height;

  const RiltopiaTitle(this.height, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: height * 0.1),
          Text('RilTopia',
              style: title(shadow: true).copyWith(
                fontSize: 38,
              )),
          Text('A social chat app',
              style: title(shadow: true).copyWith(
                  letterSpacing: 0.5,
                  wordSpacing: 1.25)
          ),
          SizedBox(height: height * 0.125),
        ],
      ),
    );
  }
}
