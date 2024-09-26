import 'dart:async';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoadingScreen extends StatefulWidget {
  const LoadingScreen({super.key});

  @override
  State<LoadingScreen> createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  //Color

  Color buttonColor = const Color(0xff8420f3);
  Color gradientColor1 = const Color(0xff1976d3);
  Color gradientColor2 = const Color(0xff1361c2);

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    checkWithSharedPreference();
  }

  void checkWithSharedPreference() async{
    SharedPreferences sp =await SharedPreferences.getInstance();

    bool isLogin=sp.getBool("isLogin")  ?? false;


    if(isLogin){
      Timer(const Duration(seconds: 3), () {
        Navigator.pushNamed(context, '/third');
      });
    }
    else{
      Timer(const Duration(seconds: 3), () {
        Navigator.pushNamed(context, '/second');
      });
    }
    

  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
        body: Container(
      width: width * 1,
      height: height,
      decoration: BoxDecoration(
          gradient: LinearGradient(
        begin: Alignment.centerRight,
        end: Alignment.centerLeft,
        colors: [
          gradientColor1,
          gradientColor2,
        ],
      )),
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                "Learn Utils with GetX",
                style: Theme.of(context)
                    .textTheme
                    .titleMedium
                    ?.copyWith(color: Colors.white, fontSize: 25),
              ),
            ),
          ]),
    ));
  }
}
