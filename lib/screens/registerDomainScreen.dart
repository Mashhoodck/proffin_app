// ignore: file_names
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:proffin_app/screens/loginScreen.dart';
import 'package:proffin_app/utils/colors.dart';

import 'package:proffin_app/widgets/buttonWidget.dart';
import 'package:proffin_app/widgets/pageIcon.dart';
import 'package:proffin_app/widgets/pageText.dart';
import 'package:proffin_app/widgets/semiRoundedTextfield.dart';

class RegisterDomainScreen extends StatelessWidget {
  const RegisterDomainScreen({Key? key}) : super(key: key);

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
                  pageIcon: SvgPicture.asset("assets/icons/linkicon.svg"),
                ),
                SizedBox(
                  height: 20,
                ),
                Text("Link your Company Domain",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 25)),
                TextHeading(
                  title: "",
                  textSize: 20,
                  textColor: AppColors.mainColor,
                ),
                SizedBox(
                  height: 10,
                ),
                TextHeading(
                  textSize: 8,
                  title:
                      "Enter your provided subdomain \n to link your company",
                  textColor: AppColors.fadeText,
                ),
                SizedBox(
                  height: 10,
                ),
                RoundedWhiteTexhField(
                  labelText: "Enter Your Domain",
                  fillColor: AppColors.textFieldsColor,
                ),
                SizedBox(
                  height: 30,
                ),
                AuthenticButton(
                  btnpress: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LoginScreen()),
                    );
                  },
                  btnText: "Next",
                  btnColor: AppColors.mainColor,
                  btnTextColor: AppColors.textFieldsColor,
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
