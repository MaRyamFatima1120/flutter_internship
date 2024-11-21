import 'package:flutter/material.dart';

void main() {
  runApp(HomeApp());
}

class HomeApp extends StatelessWidget {
  const HomeApp({super.key});

  @override
  Widget build(BuildContext context) {
    int counter = 0;
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal,
          title: Text("Lecture 3"),
          leading: Icon(Icons.menu),
          actions: [
            IconButton(
              onPressed: (){
                print("Search Button is Pressed!");
              },
              icon: Icon(Icons.search),
            ),
          ],
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Text("${counter}", style: TextStyle(fontSize: 54),),
            ),

            IconButton(
              onPressed: (){
                counter++;
                print(counter);
              },
              icon: Icon(Icons.add, size: 40,),
            )
          ],
        ),
      ),
    );
  }
}
