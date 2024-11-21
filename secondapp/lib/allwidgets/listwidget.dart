import 'package:flutter/material.dart';

class MyWidgets extends StatefulWidget {
  const MyWidgets({super.key});

  @override
  State<MyWidgets> createState() => _MyWidgetsState();
}

class _MyWidgetsState extends State<MyWidgets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurpleAccent,
        centerTitle: true,
        title: const Text("List Widgets", style: TextStyle(
          color: Colors.white,
        ),),
      ),

      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [

            Container(
              height: 300,
              width: 300,
              color: Colors.pinkAccent,
            ),

            Container(
              height: 300,
              width: 300,
              color: Colors.tealAccent,
            ),

            Container(
              height: 300,
              width: 300,
              color: Colors.blueAccent,
            ),


            Container(
              height: 300,
              width: 300,
              color: Colors.pinkAccent,
            ),

            Container(
              height: 300,
              width: 300,
              color: Colors.tealAccent,
            ),

            Container(
              height: 300,
              width: 300,
              color: Colors.blueAccent,
            ),
          ],
        ),
      ),
    );
  }
}
