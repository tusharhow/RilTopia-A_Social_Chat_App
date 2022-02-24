import 'package:flutter/material.dart';
import 'package:riltopia/common/theme/colors.dart';
import 'package:riltopia/common/theme/text.dart';

class RilTextField extends StatelessWidget {
  final TextEditingController controller;
  final FormFieldValidator validator;
  final String hintText;

  const RilTextField(
      {
        Key? key,
        required this.controller,
        required this.validator,
        required this.hintText,
      }) : super(key: key);


  @override
  Widget build(BuildContext context) {

    OutlineInputBorder textFieldBorder = OutlineInputBorder(
      borderSide: const BorderSide(color: kEmptyColor,style: BorderStyle.none),
      borderRadius: BorderRadius.circular(14.0),
    );

    return
      Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: PhysicalModel(
          borderRadius: BorderRadius.circular(14),
          color: Colors.white,
          elevation: 2.5,
          child: TextFormField(
            controller: controller,
            validator: validator,
            // onChanged: (value) => print(controller.value),
            decoration: InputDecoration(
                contentPadding: const EdgeInsets.symmetric(horizontal: 18, vertical: 18),
                hintText: hintText,
                hintStyle: hint(),
                filled: true,
                fillColor: backgroundColor,
                enabledBorder: textFieldBorder,
                border: textFieldBorder
            ),
          )
      ),
    );
  }
}
