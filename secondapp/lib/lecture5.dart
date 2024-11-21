import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const HomeApp());
}

class HomeApp extends StatefulWidget {
  const HomeApp({super.key});

  @override
  State<HomeApp> createState() => _HomeAppState();
}

class _HomeAppState extends State<HomeApp> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal,
          title: Text(
            "Lecture 3",
            style: TextStyle(color: Colors.white),
          ),
          leading: Icon(Icons.menu),
          actions: [
            IconButton(
              onPressed: () {
                print("Search Button is Pressed!");
              },
              icon: Icon(Icons.search),
            ),
          ],
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 30,
            ),
            Center(
              child: Text(
                "Welcome to  My Portfolio App",
                style: TextStyle(fontSize: 18.0, color: Colors.teal),
              ),
            ),
            SizedBox(height: 20.0,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [

                Text("Skills", style: TextStyle(color: Colors.teal, fontWeight: FontWeight.bold),),
                Text("Projects", style: TextStyle(color: Colors.teal, fontWeight: FontWeight.bold),),
              ],
            ),


            Container(
              height: 150,
              width: 150,
              margin: EdgeInsets.only(top: 30.0, bottom: 30.0),
              decoration: BoxDecoration(
                color: Colors.blue,
                shape: BoxShape.circle,
                image: DecorationImage(image: NetworkImage("https://img.freepik.com/free-photo/portrait-successful-man-having-stubble-posing-with-broad-smile-keeping-arms-folded_171337-1267.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
            ),

            Text("About Me".toUpperCase(), style: TextStyle(color: Colors.teal, fontWeight: FontWeight.bold, fontSize: 20),),

            Container(
              margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
              child: Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."),
            ),

          ],
        ),
      ),
    );
  }
}
