import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pubchem/view/home_screen.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(const Duration(seconds: 4), (){
      //get
      Get.offAndToNamed('/second',);

    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
       decoration: const BoxDecoration(
         //color: Colors.blueGrey,
         gradient: LinearGradient(
             begin: Alignment.topCenter,
             end: Alignment.bottomCenter ,
             colors: [
               Color(0xff5ed6c6),
               Color(0xff2c667b)
             ]),
       ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("assets/images/logo.png",),

              ConstrainedBox(
                constraints: BoxConstraints(
                  minWidth: 100.w,
                  maxWidth: 150.w,
                ),
                  child: Center(child: Text("ChemFinder",style: Theme.of(context).textTheme.titleLarge,)))

            ],
          ),
        ),
      ),
    );
  }
}
