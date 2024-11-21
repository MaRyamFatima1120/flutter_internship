import 'dart:async';

import 'package:flutter/material.dart';
import 'package:whatsapp_ui_design/view/home_screen.dart';

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
      Navigator.push(context, MaterialPageRoute(builder: (context)=>const HomeScreen()));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            flex: 4,
              child: Center(child: Image.asset("assets/images/1.png"))),
          
          Flexible(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("from",style: Theme.of(context).textTheme.titleMedium,),
                Text("Facebook".toUpperCase(),style: Theme.of(context).textTheme.titleLarge,),
              ],
            ),
          ),
          
          
        ],
      )
    );
  }
}
