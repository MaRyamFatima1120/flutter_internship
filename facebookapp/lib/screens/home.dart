import 'package:flutter/material.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          Center(
            child: Container(
              color: Colors.orange,
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                child: Text("Hello", style: TextStyle(fontSize: 32),),
              ),
            ),
          ),


        ],
      ),
    );
  }
}
