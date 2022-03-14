import 'package:flutter/material.dart';

class RoundedWhiteTexhField extends StatelessWidget {
  final Color fillColor;
  final Widget? prefixIcon;
  final String labelText;
  const RoundedWhiteTexhField(
      {Key? key,
      this.fillColor = Colors.white,
      this.prefixIcon,
      this.labelText = ""})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      margin:
          EdgeInsets.only(left: size.width * 0.03, right: size.width * 0.03),
      child: TextField(
        autofocus: false,
        decoration: InputDecoration(
          prefixIcon: prefixIcon,
          hintText: labelText,
          filled: true,
          fillColor: fillColor,
          contentPadding: EdgeInsets.only(
              left: size.width * 0.03,
              right: size.width * 0.03,
              top: size.width * 0.03,
              bottom: size.width * 0.03),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white),
              borderRadius: BorderRadius.circular(10)),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
            borderRadius: BorderRadius.circular(8),
          ),
        ),
      ),
    );
  }
}
