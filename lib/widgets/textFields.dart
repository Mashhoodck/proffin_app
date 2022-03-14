import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:proffin_app/utils/colors.dart';

class TextFieldsLogin extends StatelessWidget {
  final String? labeText;
  final IconData? icon;
  final Widget? sufixIcon;

  const TextFieldsLogin({Key? key, this.labeText, this.icon, this.sufixIcon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(
          color: AppColors.textFieldsColor,
          borderRadius: BorderRadius.circular(8)),
      margin:
          EdgeInsets.only(left: size.width * 0.03, right: size.width * 0.03),
      padding: const EdgeInsets.all(4),
      child: TextField(
        style: const TextStyle(color: Colors.black),
        decoration: InputDecoration(
            floatingLabelBehavior: FloatingLabelBehavior.never,
            labelText: labeText,
            labelStyle: const TextStyle(color: Colors.black),
            focusColor: Colors.black,
            border: InputBorder.none,
            contentPadding: const EdgeInsets.symmetric(horizontal: 20),
            suffixIcon: sufixIcon),
      ),
    );
  }
}
