
import 'dart:async';
import 'dart:ui';

import 'package:dailyshop/screens/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';


class LoadingScreen extends StatefulWidget {
  const LoadingScreen({super.key});

  @override
  State<LoadingScreen> createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(const Duration(seconds: 5,), (){
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const HomeScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/bg.jpg"),
            fit: BoxFit.fitHeight,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [

            BackdropFilter(
              filter: ImageFilter.blur(
                sigmaX: 1.5,
                sigmaY: 1.5,
              ),
              child: Container(
                color: Colors.black,
              ),
            ),

            Text("DailyShop", style: GoogleFonts.yellowtail(
              textStyle: const TextStyle(
                color: Colors.white,
                fontSize: 74,
              ),
            ),),

            const SizedBox(height: 10,),


            SpinKitSpinningLines(
              color: Colors.white,
              size: 120.0,
            ),


          ],
        ),
      ),
    );
  }
}



