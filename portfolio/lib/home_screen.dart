import 'package:flutter/material.dart';
import 'package:portfolio/Sections/topSection/top_section.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                TopSection()
              ],
            ),
          ),
        )
    );
  }
}
