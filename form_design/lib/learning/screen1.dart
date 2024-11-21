import 'package:flutter/material.dart';

class Screen1 extends StatefulWidget {
  const Screen1({super.key});

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {

  @override
  Widget build(BuildContext context) {

    var screenWith = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;
    var screenOrientation = MediaQuery.of(context).orientation;

    return Scaffold(
      body: screenOrientation == Orientation.portrait ? Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: Text("Portrait"))
        ],
      ) : Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: Text("LandScape")),
        ],
      ),
    );
  }
}



/*
Container(
  width: screenWith * 0.15,
  height: screenHeight * 0.15,
  color: Colors.black,
),




*/
