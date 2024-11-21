import 'package:flutter/material.dart';

void main(){
  runApp( MaterialApp(
    home: Scaffold(
        appBar:AppBar(
          backgroundColor: Colors.teal,
          title: const Text("Flutter Widget"),
          leading: const Icon(Icons.menu_outlined),
          actions: [
            IconButton(
              onPressed: (){},
              icon:const Icon(Icons.favorite),
            )
          ],
        ),
        body:Text("Welcome in Flutter")
    ),
  ));
}

class HomeApp extends StatelessWidget {
  const HomeApp({super.key});

  @override
  Widget build(BuildContext context) {
    int count=0;
    return MaterialApp(
        home:Scaffold(
          appBar:AppBar(
            backgroundColor: Colors.teal,
            title: const Text("Flutter Widget"),
            leading: const Icon(Icons.menu_outlined),
            actions: [
              IconButton(
                onPressed: (){},
                icon:const Icon(Icons.favorite),
              )
            ],
          ),
          body:Column(
            children: [
              Center(child: Text("Welcome in Flutter\nCounter Number is:$count",style: TextStyle(fontSize:18),)),
              IconButton(onPressed: (){
                count++;
              }, icon: Icon(Icons.add))
            ],
          ),
        )
    );
  }
}
