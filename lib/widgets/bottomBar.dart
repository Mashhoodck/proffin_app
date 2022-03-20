import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:proffin_app/utils/colors.dart';
import 'package:proffin_app/widgets/buttonWidget.dart';
import 'package:proffin_app/widgets/containertags.dart';

class BottombarCustom extends StatelessWidget {
  final String btnText;
  final VoidCallback btnclick;
  const BottombarCustom({
    Key? key,
    required this.btnText,
    required this.btnclick,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      width: double.maxFinite,
      color: AppColors.textFieldsColor,
      child: Container(
        margin:
            EdgeInsets.only(left: size.width * 0.01, right: size.width * 0.01),
        child: Column(
          children: [
            SizedBox(
              height: size.height * 0.03,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ContainerTag(
                    tagText: "Items : 3", tagColor: AppColors.mainColor),
                ContainerTag(
                    tagText: "Quantity : 123", tagColor: AppColors.mainColor),
                ContainerTag(
                    tagText: "Items :\$ 149", tagColor: AppColors.mainColor)
              ],
            ),
            SizedBox(
              height: size.width * 0.02,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ContainerTag(
                    tagText: "Tax : \$123", tagColor: AppColors.mainColor),
                ContainerTag(
                    tagText: "Net Total : \$223",
                    tagColor: AppColors.mainColor),
              ],
            ),
            SizedBox(
              height: size.width * 0.03,
            ),
            Container(
              width: double.maxFinite,
              margin: EdgeInsets.only(
                  left: size.width * 0.01, right: size.width * 0.01),
              child: AuthenticButton(
                btnText: btnText,
                btnTextColor: AppColors.whiteText,
                btnpress: btnclick,
                btnColor: AppColors.greenColor,
              ),
            )
          ],
        ),
      ),
    );
  }
}
