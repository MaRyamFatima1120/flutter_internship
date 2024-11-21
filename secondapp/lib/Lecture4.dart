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
  int counter =  0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal,
          title: Text("Lecture 3", style: TextStyle(color: Colors.white),),
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
                setState(() {
                  counter++;
                });
              },
              icon: Icon(Icons.add, size: 40,),
            ),

            IconButton(
              onPressed: (){
                setState(() {
                  if(counter == 0){
                    counter = 0;
                  }else {
                    counter--;
                  }
                });
              },
              icon: const Icon(Icons.remove, size: 40,),
            ),

            IconButton(
              onPressed: (){
                setState(() {
                  counter = 0;
                });
              },
              icon: const Icon(Icons.lock_reset, size: 40,),
            )
          ],
        ),
      ),
    );
  }
}
