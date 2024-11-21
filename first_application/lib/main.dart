 //===================First Lecture in Flutter===================


//import package  //What is Package?
//Package is self contained piece of codes that we can import and
// used in other projects. Packages contain utility functions,widgets and other code that can be reuseable in other flutter appplication.

//In the context of programming, a package is a collection of related modules or libraries that are bundled together. These modules contain functions, classes, or other resources that perform related tasks.

import 'package:flutter/material.dart';

void main() {
  //In Flutter, runApp() is a built-in function that takes as its argument
  //a Widget and makes it the root of your widget tree

  //MaterialApp is a predefined class in Flutter that is usually used as the root of your app.
//MaterialApp is a convenience widget that wraps a number of widgets that are commonly required for applications implementing Material Design.
// It's part of the Flutter framework, which is developed by Google.
  runApp(MaterialApp(
    // SafeArea is a widget in Flutter that helps your app look good on all devices. It makes sure that your app's content doesn't get hidden by things like the notch on an iPhone or the status bar on an Android device.
    // It's like an invisible boundary that keeps your app's content safe from being obscured.
    home: SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepOrange,
          centerTitle: true,
          title: const Text("My First App", style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18),),
            leading: IconButton(
              onPressed: (){},
              icon:const Icon(Icons.home,color: Colors.white,),
            ),
          actions: [
            IconButton(
              icon:const Icon(Icons.app_registration,color: Colors.white,), onPressed: () {  },),
          ],
        ),


     
      body: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
           Center(
              child: Text("Welcome in Flutter Application", style:
              TextStyle(color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 16),
              ),
           ),
          Center(
             child: Text("Created by Maryam Munawar", style:
             TextStyle(color: Colors.black,
                 fontWeight: FontWeight.w400,
                 fontSize: 14),
             ),
          ),

        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {

        },
        backgroundColor: Colors.deepOrange,
        child:const Icon(
            Icons.add,
            color: Colors.white,
        ),
      ),


    ),
  ), //It is like roof and plain white area.//In Flutter, Scaffold is a widget that implements the basic Material Design visual layout structure. It provides a framework that includes major components such as an appBar, a drawer, a bottom navigation bar, floating action buttons,
    // and a body in which you can change the current screen.
  )
  );
}
