import 'package:flutter/material.dart';
import 'package:form_design_1/screen/login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Form Design',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        textTheme: const TextTheme(
          titleMedium: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w800,
            color: Colors.black,
          ),
          titleSmall: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w400,
            color: Colors.black54,

          )
        )
      ),
      home: const LoginScreen(),
    );
  }
}

