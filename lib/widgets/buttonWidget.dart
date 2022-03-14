import 'package:flutter/material.dart';

class AuthenticButton extends StatelessWidget {
  final String btnText;
  final Color? btnColor;
  final Color? btnTextColor;
  final VoidCallback btnpress;
  const AuthenticButton(
      {Key? key,
      required this.btnText,
      this.btnColor,
      this.btnTextColor,
      required this.btnpress})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return FlatButton(
      padding: EdgeInsets.all(16),
      minWidth: size.width * 0.4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      onPressed: btnpress,
      color: btnColor,
      textColor: btnTextColor,
      child: Text(btnText),
    );
  }
}
