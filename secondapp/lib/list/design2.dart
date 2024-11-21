
import 'package:flutter/material.dart';

class Design2 extends StatefulWidget {
  const Design2({super.key});

  @override
  State<Design2> createState() => _Design2State();
}

class _Design2State extends State<Design2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        elevation:54.0,
        title: const Text("Rows and Columns", style: TextStyle(color: Colors.white),),
      ),
      body: Column(
        children: [

         Row(
           children: [
             Expanded(child: Container(height: 80 ,color: Colors.blue,)),
             Expanded(child: Container(height: 80 ,color: Colors.red,)),
             Expanded(child: Container(height: 80 ,color: Colors.blue,)),
           ],
         ),

          Expanded(
            child: Container(
              color: Colors.deepPurple,
            ),
          ),

          Expanded(
            child: Container(
              color: Colors.blue,
            ),
          ),

          Expanded(
            child: Container(
              color: Colors.deepPurple,
            ),
          ),


        ],
      ),
    );
  }
}




