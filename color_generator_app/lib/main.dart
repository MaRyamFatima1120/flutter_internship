import 'package:color_generator_app/view/ui_color_generator_app.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Color Generator App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurpleAccent),
        useMaterial3: true,
        textTheme: const TextTheme(
          titleMedium: TextStyle(
            fontSize: 24,
            color: Colors.black,
            fontWeight: FontWeight.bold
          )
        )
      ),
      getPages: [
        GetPage(name: "/", page: () => const UiColorGeneratorApp())

      ],


    );
  }
}
