import 'dart:async';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_api/Get%20Api/screen/post_api/home_screen.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(const Duration(seconds: 3),(){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>const HomeScreen()));
    });
  }
  @override
  Widget build(BuildContext context) {
    var widthSize = MediaQuery.of(context).size.width;
    var heightSize = MediaQuery.of(context).size.height;
    return Scaffold(
        body: Container(
      width: widthSize,
      height: heightSize,
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/bj1.jpg"), fit: BoxFit.cover)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          BackdropFilter(
            filter: ImageFilter.blur(
              sigmaX: 10.0,
              sigmaY: 10.0,
            ),
            child: Container(
              color: Colors.black.withOpacity(0.5),
            ),
          ),
          const SizedBox(
            height: 100,
          ),
          Text(
            "API Integration",
            style:
                Theme.of(context).textTheme.titleMedium?.copyWith(fontSize: 25),
          ),
          const SizedBox(
            height: 100,
          ),
          const SpinKitRing(
           color: Colors.white,
            size: 50,
          ),
        ],
      ),
    ));
  }
}
