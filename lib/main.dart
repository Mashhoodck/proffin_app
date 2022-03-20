import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/route_manager.dart';
import 'package:proffin_app/screens/addItems.dart';
import 'package:proffin_app/screens/paymentscree.dart';
import 'package:proffin_app/screens/registerDomainScreen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
    return ScreenUtilInit(
      builder: () => GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Pro Konnect',
        theme: ThemeData(
          // This is the theme of your application.

          primarySwatch: Colors.blue,
        ),
        home: const RegisterDomainScreen(),
      ),
      designSize: const Size(428, 926),
    );
  }
}
