// ignore_for_file: file_names

import 'package:flutter/material.dart';

import 'package:proffin_app/utils/colors.dart';

class TextHeading extends StatelessWidget {
  final String title;
  final Color textColor;
  final double? textSize;

  const TextHeading({
    Key? key,
    required this.title,
    required this.textColor,
    this.textSize,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(fontSize: 20, color: AppColors.mainColor),
    );
  }
}
