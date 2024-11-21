
import 'package:flutter/material.dart';

class Design1 extends StatefulWidget {
  const Design1({super.key});

  @override
  State<Design1> createState() => _Design1State();
}

class _Design1State extends State<Design1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        elevation:54.0,
        title: Text("Rows and Columns", style: TextStyle(color: Colors.white),),
      ),
      body: Column(
        children: [

          Row(
            children: [
              Container(
                width: 120,
                height: 80,
                color: Colors.blue,
              ),

              Container(
                width: 150,
                height: 80,
                color: Colors.red,
              ),

              Container(
                width: 122,
                height: 80,
                color: Colors.blue,
              )
            ],
          ),

          Container(
            height: 200,
            width: double.infinity,
            color: Colors.deepPurpleAccent,
          ),

          Container(
            height: 200,
            width: double.infinity,
            color: Colors.blueAccent,
          ),

          Container(
            height: 200,
            width: double.infinity,
            color: Colors.deepPurpleAccent,
          ),


        ],
      ),
    );
  }
}




