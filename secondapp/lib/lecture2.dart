import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "Scaffold App",
    home: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        elevation: 5.0,
        title: Text("My Scaffold App"),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: (){},
        ),
        actions: [
          Icon(Icons.search),
          Icon(Icons.notification_important, size: 35, color: Colors.white,),
        ],

      ),
      body: Center(child: Text("Welcome to Second App")),
    ),
  ));
}

