// ignore: file_names

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:proffin_app/screens/otpScreen.dart';
import 'package:proffin_app/utils/colors.dart';
import 'package:proffin_app/widgets/buttonWidget.dart';
import 'package:proffin_app/widgets/pageIcon.dart';
import 'package:proffin_app/widgets/pageText.dart';
import 'package:proffin_app/widgets/semiRoundedTextfield.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                PageIcon(
                  pageIcon: SvgPicture.asset("assets/icons/lockicon.svg"),
                ),
                SizedBox(
                  height: 20,
                ),
                TextHeading(
                  title: "Login",
                  textColor: AppColors.mainColor,
                  textSize: 25,
                ),
                SizedBox(
                  height: 10,
                ),
                TextHeading(
                  title: "Enter to start your session",
                  textColor: AppColors.mainColor,
                  textSize: 15,
                ),
                SizedBox(
                  height: 10,
                ),
                RoundedWhiteTexhField(
                  fillColor: AppColors.textFieldsColor,
                  labelText: "Username",
                ),
                SizedBox(
                  height: 10,
                ),
                RoundedWhiteTexhField(
                  fillColor: AppColors.textFieldsColor,
                  labelText: "Password",
                ),
                SizedBox(
                  height: 30,
                ),
                AuthenticButton(
                  btnText: "Next",
                  btnColor: AppColors.mainColor,
                  btnTextColor: Colors.white,
                  btnpress: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => OtpVerification()));
                  },
                ),
                SizedBox(
                  height: 100,
                ),
                Text(
                  "Needhelp",
                  style: TextStyle(color: AppColors.fadeText),
                )
              ],
            ),
          ),
        ));
  }
}