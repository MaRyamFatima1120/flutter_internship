

import 'dart:async';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:projectapi/screens/dashboard.dart';

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
    Timer(const Duration(seconds: 5), (){
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => const DashboardScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: NetworkImage("https://images.pexels.com/photos/3225517/pexels-photo-3225517.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2"),
            fit: BoxFit.fitHeight
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [

            BackdropFilter(
              filter: ImageFilter.blur(
                sigmaX: 4.0,
                sigmaY: 4.0,
              ),
              child: Container(
                color: Colors.black,
              ),
            ),

            // const Center(
            //   child: Text("Loading....", style: TextStyle(
            //     fontSize: 42,
            //     fontWeight: FontWeight.bold,
            //     color: Colors.red,
            //   ),),
            // ),

            SpinKitWave(
              size: 72,
              itemBuilder: (BuildContext context, int index) {
                return const DecoratedBox(
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                );
              },
            ),



          ],
        ),
      ),
    );
  }
}


