import 'package:flutter/material.dart';
import 'package:flutter_api/screen/splash_screen.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: GoogleFonts.interTextTheme(
         const TextTheme(
           titleMedium: TextStyle(
             color: Colors.white,
             fontSize: 24,
             fontWeight: FontWeight.bold,
             letterSpacing: 2,

           )
         )
        )
      ),
      home:const Splashscreen(),
    );
  }
}
