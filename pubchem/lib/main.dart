import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pubchem/view/home_screen.dart';
import 'package:pubchem/view/splash_screen.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(
      builder: (BuildContext, Orientation, ScreenType) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',

          getPages: [
            GetPage(
              name:'/',page:()=>const SplashScreen(),
            ),
            GetPage(name: '/second', page:()=>const HomeScreen(),)
          ],
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
            textTheme: const TextTheme(
              titleLarge: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 40,
              )
            )
          ),
        );
      },
    );
  }
}
