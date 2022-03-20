// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:proffin_app/screens/printInvoice.dart';
import 'package:proffin_app/utils/colors.dart';
import 'package:proffin_app/utils/dimensions.dart';
import 'package:proffin_app/widgets/bottomBar.dart';
import 'package:proffin_app/widgets/buttonWidget.dart';
import 'package:proffin_app/widgets/containertags.dart';
import 'package:proffin_app/widgets/searchFieldFilledColor.dart';
import 'package:proffin_app/widgets/successPopup.dart';

class PaymentScreen extends StatelessWidget {
  const PaymentScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: AppColors.textFieldsColor,
          leading: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          title: Text(
            "Add Items",
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
          actions: [
            Icon(
              Icons.menu,
              color: Colors.black,
            )
          ],
        ),
        body: Column(
          children: [
            Expanded(
                child: Container(
                    margin: EdgeInsets.only(left: 10.h, right: 10.h),
                    child: PaymentScreenWidget())),
            BottombarCustom(
              btnText: "Print",
              btnclick: () {
                showDialog(
                  context: context,
                  builder: (context) => SuccessDilogue(),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}

class PaymentScreenWidget extends StatefulWidget {
  const PaymentScreenWidget({
    Key? key,
  }) : super(key: key);

  @override
  State<PaymentScreenWidget> createState() => _PaymentScreenWidgetState();
}

class _PaymentScreenWidgetState extends State<PaymentScreenWidget> {
  @override
  Widget build(BuildContext context) {
    int? _value = 1;
    Color _RradioButtunColor = Colors.black;
    return Container(
      height: Dimensions.height400,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: Dimensions.height20,
                  ),
                  Text(
                    "Payment Methord",
                    style: TextStyle(
                        fontSize: Dimensions.font20,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            child: Row(
                              children: [
                                SizedBox(
                                  width: Dimensions.width15,
                                ),
                                Icon(Icons.home_rounded),
                                SizedBox(
                                  width: Dimensions.width10,
                                ),
                                Text(
                                  "Bank Transfer",
                                ),
                              ],
                            ),
                          ),
                          Radio<int>(
                            value: 1,
                            activeColor: Colors.black,
                            groupValue: _value,
                            onChanged: (value) {
                              setState(() {
                                _value = value;
                              });
                            },
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            child: Row(
                              children: [
                                SizedBox(
                                  width: Dimensions.width15,
                                ),
                                Icon(Icons.attach_money_sharp),
                                SizedBox(
                                  width: Dimensions.width10,
                                ),
                                Text(
                                  "Cash",
                                ),
                              ],
                            ),
                          ),
                          Radio<int>(
                            value: 2,
                            groupValue: _value,
                            onChanged: (value) {
                              setState(() {
                                _value = value;
                                print(value);
                              });
                            },
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            child: Row(
                              children: [
                                SizedBox(
                                  width: Dimensions.width15,
                                ),
                                Icon(Icons.money),
                                SizedBox(
                                  width: Dimensions.width10,
                                ),
                                Text(
                                  "Cheque",
                                ),
                              ],
                            ),
                          ),
                          Radio<int>(
                            value: 3,
                            groupValue: _value,
                            onChanged: (value) {
                              setState(() {
                                _value = value;
                              });
                            },
                          )
                        ],
                      )
                    ],
                  ),

                  //discount widget
                  SizedBox(
                    height: 20.h,
                  ),
                  Text(
                    "Discount",
                    style: TextStyle(
                        fontSize: Dimensions.font20,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: Dimensions.height15,
                  ),
                  Container(
                    margin: EdgeInsets.only(
                        left: Dimensions.width20, right: Dimensions.width20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Total Amount",
                        ),
                        Text(
                          "\$29",
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: Dimensions.height30,
                  ),
                  Container(
                    margin: EdgeInsets.only(
                        left: Dimensions.width20, right: Dimensions.width20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Total Tax Amount",
                        ),
                        Text(
                          "\$29",
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: Dimensions.height15,
                  ),
                  Container(
                    margin: EdgeInsets.only(
                        left: Dimensions.width20, right: Dimensions.width20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Discount",
                        ),
                        Container(
                            width: 100,
                            child: SearchField(
                              labelText: "\$00.0",
                              fillColor: AppColors.textFieldsColor,
                            ))
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Container(
                    margin: EdgeInsets.only(
                        left: Dimensions.width20, right: Dimensions.width20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Total Amount  (Iclude Vat) ",
                        ),
                        Text(
                          "\$29",
                        )
                      ],
                    ),
                  ),

                  //Credit or Debit

                  SizedBox(
                    height: 20.h,
                  ),
                  Text(
                    "Credit Or Debit",
                    style: TextStyle(
                        fontSize: Dimensions.font20,
                        fontWeight: FontWeight.bold),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: Row(
                          children: [
                            SizedBox(
                              width: Dimensions.width15,
                            ),
                            SizedBox(
                              width: Dimensions.width10,
                            ),
                            Text(
                              "Credit",
                            ),
                          ],
                        ),
                      ),
                      Radio<int>(
                        value: 1,
                        groupValue: _value,
                        onChanged: (val) {
                          setState(() {
                            _value = val;
                          });
                        },
                        activeColor: Colors.black,
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: Row(
                          children: [
                            SizedBox(
                              width: Dimensions.width15,
                            ),
                            SizedBox(
                              width: Dimensions.width10,
                            ),
                            Text(
                              "Debit",
                            ),
                          ],
                        ),
                      ),
                      Radio<int>(
                        value: 2,
                        groupValue: _value,
                        onChanged: (val) {
                          setState(() {
                            _value = val;
                          });
                        },
                        activeColor: Colors.black,
                      )
                    ],
                  ),

                  Container(
                    margin: EdgeInsets.only(
                        left: Dimensions.width20, right: Dimensions.width20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Advance",
                        ),
                        Container(
                            width: 100,
                            child: SearchField(
                              labelText: "\$00.0",
                              fillColor: AppColors.textFieldsColor,
                            ))
                      ],
                    ),
                  ),
                  SizedBox(
                    height: Dimensions.height10,
                  ),
                  Container(
                    margin: EdgeInsets.only(
                        left: Dimensions.width20, right: Dimensions.width20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Due Date",
                        ),
                        Container(
                            width: 100,
                            child: SearchField(
                              labelText: "\$00.0",
                              fillColor: AppColors.textFieldsColor,
                            ))
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Container(
                    margin: EdgeInsets.only(
                        left: Dimensions.width20, right: Dimensions.width20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Total Amount  (Iclude Vat) ",
                        ),
                        Text("\$29")
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                ],
              ),
            ),

            // Bottom Container with tag button
          ],
        ),
      ),
    );
  }
}
