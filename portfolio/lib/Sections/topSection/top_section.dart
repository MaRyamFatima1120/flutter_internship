import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:portfolio/Sections/topSection/component/menu.dart';

class TopSection extends StatelessWidget {
  const TopSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 250,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/background.png"),
          fit: BoxFit.cover,
        ),
      ),
      child: Stack(alignment: Alignment.center, children: [
        Menu(),
        ClipRRect(
          borderRadius: BorderRadius.circular(10.0),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
            child: Container(
                height: 150,
                width: 300,
                color: Colors.white.withOpacity(0.2),
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 24.0),
                      child: Text(
                        "Hello,There",
                        style: TextStyle(fontSize: 12, color: Colors.white),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 24),
                      child: Text(
                        "Munawar\nAhmad",
                        style: TextStyle(
                          fontSize: 25,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 24.0),
                      child: Text(
                        "Flutter Developer",
                        style: TextStyle(fontSize: 12, color: Colors.white),
                      ),
                    ),
                  ],
                )),
          ),
        ),
        Positioned(
            right: 0,
            child: Container(
              width: 250,
              height: 250,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                image: AssetImage("assets/images/person.png"),
              )),
            )),

      ]),
    );
  }
}
