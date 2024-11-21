import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_app1/screens/TextUtils.dart';
import 'package:getx_app1/screens/mybottomsheet.dart';
import 'package:getx_app1/screens/mysnackbar.dart';
import 'package:getx_app1/screens/routes/screen1.dart';
import 'package:getx_app1/screens/routes/screen2.dart';
import 'package:getx_app1/screens/routes/screen3.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: const TextUtils(),
      getPages: [
        GetPage(name: '/screenOne', page: ()=> Screen1()),
        GetPage(name: '/screenTwo', page: ()=> Screen2()),
        GetPage(name: '/screenThree', page: ()=> Screen3()),
      ],

    );
  }
}
