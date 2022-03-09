import 'package:flutter/material.dart';

import 'package:proffin_app/screens/registerDomainScreen.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Proffin',
      theme: ThemeData(
        primaryColor: Colors.black,
      ),
      home: const RegisterDomainScreen(),
    );

    // RegisterDomainScreen
  }
}
