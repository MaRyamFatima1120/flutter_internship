import 'dart:async';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_api/authentication/dashboard.dart';
import 'package:flutter_api/authentication/login.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoadingScreen extends StatefulWidget {
  const LoadingScreen({super.key});

  @override
  State<LoadingScreen> createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {

  void checkUser()async {
    SharedPreferences sp = await SharedPreferences.getInstance();

    bool isLogin = sp.getBool("isLogin") ?? false;

    if(isLogin){
      Timer(const Duration(seconds: 5), () {
        Navigator.push(context, MaterialPageRoute(builder: (context)=> const DashboardScreen()));
      });
    }else{
      Timer(const Duration(seconds: 5), () {
        Navigator.push(context, MaterialPageRoute(builder: (context)=> const LoginScreen()));
      });
    }


  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    checkUser();
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
