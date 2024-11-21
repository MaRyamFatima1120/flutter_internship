import 'package:flutter/material.dart';

void main(){
  runApp(HomeApp());
}

class HomeApp extends StatefulWidget {
  const HomeApp({super.key});

  @override
  State<HomeApp> createState() => _HomeAppState();
}

class _HomeAppState extends State<HomeApp> {
  int count=0;
  @override
  Widget build(BuildContext context) {

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
                setState(() {
                  count++;
                });
              }, icon: Icon(Icons.add))
            ],
          ),
        )
    );
  }
}
