import 'package:flutter/material.dart';

class MyStack extends StatefulWidget {
  const MyStack({super.key});

  @override
  State<MyStack> createState() => _MyStackState();
}

class _MyStackState extends State<MyStack> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [

              Stack(
                alignment: Alignment.centerRight,
                children: [
                  Container(
                    height: 200,
                    width: 200,

                    decoration: const BoxDecoration(
                      color: Colors.blue,
                      image: DecorationImage(
                        image: AssetImage("assets/images/1.png"),
                      ),
                    ),
                  ),

                  // Container(
                  //   height: 150,
                  //   width: 150,
                  //   color: Colors.orange,
                  // ),

                  // Container(
                  //   height:120,
                  //   width: 120,
                  //   color: Colors.yellow,
                  // ),
                ],
              )

            ],
          ),
        ),
      ),

    );
  }
}
