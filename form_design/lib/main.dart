import 'package:flutter/material.dart';
import 'package:form_design/screen/home_screen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        textTheme:const TextTheme(
          titleMedium: TextStyle(
            color: Color(0xff0d4a8d),
            fontSize: 35,
            fontWeight: FontWeight.w700,
          ),
          titleSmall: TextStyle(
            color: Colors.black38,
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),

      home: const HomeScreen(),
    );
  }
}

