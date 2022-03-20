import 'package:flutter/material.dart';
import 'package:proffin_app/screens/addItems.dart';
import 'package:proffin_app/utils/colors.dart';
import 'package:proffin_app/utils/dimensions.dart';

class ContainerTile extends StatelessWidget {
  final VoidCallback? btnclick;
  const ContainerTile({Key? key, this.btnclick}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () {
        showDialog(context: context, builder: (context) => ProductPopup());
      },
      child: Container(
        padding: EdgeInsets.only(
          left: size.width * 0.03,
          right: size.width * 0.03,
          top: size.width * 0.03,
          bottom: size.width * 0.03,
        ),
        margin: EdgeInsets.only(
          left: size.width * 0.01,
          right: size.width * 0.01,
        ),
        decoration: BoxDecoration(
            color: AppColors.textFieldsColor,
            borderRadius: BorderRadius.circular(Dimensions.radius15)),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("ID : 101"),
                Text(
                  "Dettol Handwash 900ml",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(
              height: size.width * 0.01,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Rate : \$12"),
                Text("Qty : 12 CTN"),
                Text("Amount : \$ 122.09")
              ],
            ),
          ],
        ),
      ),
    );
  }
}
