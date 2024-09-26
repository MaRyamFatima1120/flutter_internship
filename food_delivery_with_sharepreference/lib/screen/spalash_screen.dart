import 'dart:async';
import 'dart:ui';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery/screen/dashboardscreen.dart';
import 'package:food_delivery/screen/login.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';

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
    checkUserLogin();
  }

  void checkUserLogin() async{
    SharedPreferences sp =await SharedPreferences.getInstance();

    bool isLogin =sp.getBool("isLogin")?? false;

    if(isLogin){
      Timer(const Duration(seconds: 4), (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>const DashboardScreen()));
      });
    }
    else{
      Timer(const Duration(seconds: 4), (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>const LoginScreen()));
      });
    }

  }
  @override
  Widget build(BuildContext context) {

    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: const BoxDecoration(
            image:DecorationImage(
              image: AssetImage(
                "assets/images/bg.jpg",

              ),
              fit: BoxFit.fitHeight,
              //filterQuality: FilterQuality.high,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              BackdropFilter(
                  filter: ImageFilter.blur(
                    sigmaX: 2.0,
                    sigmaY: 2.0
                  ),
                child: Container(
                  color: Colors.black.withOpacity(1),
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.black.withOpacity(0.7),
                  
                  child: Center(
                    child: AnimatedTextKit(
                        animatedTexts:[
                          TypewriterAnimatedText("Foodgo",textStyle: const TextStyle(
                            fontSize: 50,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFFFE8C00),
                            letterSpacing: 4,
                
                          )),
                        ] ),
                  ),
                ),
              ),


            ],
          ),
        ),
      ),
    );
  }
}
