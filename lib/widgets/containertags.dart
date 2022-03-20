import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:proffin_app/utils/colors.dart';
import 'package:proffin_app/utils/dimensions.dart';

class ContainerTag extends StatelessWidget {
  final String tagText;
  final Color tagColor;
  const ContainerTag({Key? key, required this.tagText, required this.tagColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Container(
      decoration: BoxDecoration(
          color: AppColors.mainColor,
          borderRadius: BorderRadius.circular(Dimensions.radius15)),
      padding: EdgeInsets.only(
        left: size.width * 0.02,
        right: size.width * 0.02,
        top: size.width * 0.02,
        bottom: size.width * 0.02,
      ),
      child: Text(
        tagText,
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}
