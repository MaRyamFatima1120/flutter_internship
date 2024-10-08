import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'Post APi/screen/post_api_simple/home_screen.dart';

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
      home:const PostHomeScreen(),
    );
  }
}
