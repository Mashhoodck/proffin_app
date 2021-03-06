import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:proffin_app/screens/addItems.dart';
import 'package:proffin_app/utils/colors.dart';
import 'package:proffin_app/widgets/buttonWidget.dart';
import 'package:proffin_app/widgets/pageText.dart';
import 'package:proffin_app/widgets/textFields.dart';

class OtpVerification extends StatelessWidget {
  const OtpVerification({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: size.height * 0.3,
                  child: SvgPicture.asset("assets/icons/lockicon.svg"),
                ),
                SizedBox(height: size.height * 0.03),
                TextHeading(
                  title: "OTP Verification",
                  style:
                      GoogleFonts.notoSans(fontSize: 25, color: Colors.black),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextHeading(
                  title: "Enter to start your session",
                  style: GoogleFonts.roboto(fontSize: 15, color: Colors.black),
                ),
                const SizedBox(
                  height: 10,
                ),
                const TextFieldsLogin(
                  labeText: "hint",
                ),
                const SizedBox(
                  height: 10,
                ),
                const TextFieldsLogin(
                  labeText: "Password",
                  sufixIcon: Icon(
                    Icons.visibility,
                    color: Colors.black,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                TextFieldsLogin(
                  labeText: "Enter OTP",
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Resend OTP",
                  style: TextStyle(
                      color: Colors.white,
                      decoration: TextDecoration.underline,
                      decorationThickness: 2),
                ),
                SizedBox(
                  height: 30,
                ),
                AuthenticButton(
                  btnpress: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => AddItems()));
                  },
                  btnText: "Next",
                  btnColor: AppColors.mainColor,
                  btnTextColor: Colors.white,
                ),
                SizedBox(
                  height: 60,
                ),
              ],
            ),
          ),
        ));
  }
}
