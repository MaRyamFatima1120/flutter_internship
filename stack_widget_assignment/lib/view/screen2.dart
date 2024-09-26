import 'package:flutter/material.dart';
import 'package:stack_widget_assignment/view/screen3.dart';

class Screen2 extends StatefulWidget {
  const Screen2({super.key});

  @override
  State<Screen2> createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.red,
        title: const Text("Stack",style: TextStyle(
          color: Colors.white
        ),),
        actions: [
          IconButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>Screen3()));
          }, icon:const Icon(Icons.arrow_forward_rounded,color: Colors.white,),)
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              clipBehavior: Clip.none,
              alignment: Alignment.center,
              children: [
                Container(
                  height: 250,
                  width: 250,
                  decoration: const BoxDecoration(
                    color: Colors.red,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        blurRadius: 2,
                        spreadRadius: 2,
                      ),
                    ],
                  ),
                ),
                Positioned(
                  bottom: -40,
                  right: -40,
                  child: Container(
                    height: 250,
                    width: 250,
                    decoration: const BoxDecoration(
                      color: Colors.blue,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 2,
                          spreadRadius: 2,
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  bottom: -100,
                  left: -60,
                  child: Container(
                    height: 250,
                    width: 250,
                    decoration: const BoxDecoration(
                      color: Color(0xffffeb3b),
                    ),
                  ),
                ),
                Positioned(
                  bottom: -160,
                  right: -160,
                  child: Container(
                    height: 250,
                    width: 250,
                    decoration: const BoxDecoration(
                      color: Colors.red,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 2,
                          spreadRadius: 2,
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  bottom: -200,
                  right: -220,
                  child: Container(
                    height: 250,
                    width: 250,
                    decoration: const BoxDecoration(
                      color: Colors.blue,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 2,
                          spreadRadius: 2,
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  bottom: -250,
                  left: -100,
                  child: Container(
                    height: 250,
                    width: 250,
                    decoration: const BoxDecoration(
                      color: Color(0xffffeb3b),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
