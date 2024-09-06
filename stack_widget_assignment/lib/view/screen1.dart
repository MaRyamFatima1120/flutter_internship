import 'package:flutter/material.dart';
import 'package:stack_widget_assignment/view/screen2.dart';

class Screen1 extends StatefulWidget {
  const Screen1({super.key});

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Container(
                      height: 250,
                      width: 250,
                      decoration: const BoxDecoration(
                          color:  Colors.red,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            offset:  Offset(10.0,10.0),
                            blurRadius: 10.0,
                            spreadRadius: 3.0,
                          ),
                        ]
                      ),
                      alignment: Alignment.centerRight,
                      child: const RotatedBox(quarterTurns: 1,
                      child: Text("Container 1",style: TextStyle(
                        color: Colors.white,
                        fontSize: 20
                      ),),
                      ),

                    ),
                    Positioned(
                      left: -25,
                      top: -25,
                      child: Container(
                        height: 200,
                        width: 200,
                        decoration: const BoxDecoration(
                            color:  Colors.green,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey,
                                offset:  Offset(4.0,4.0),
                                blurRadius: 5.0,
                                spreadRadius: 2.0,
                              ),
                            ]
                        ),
                        alignment: Alignment.bottomCenter,
                        child: const Text("Container 2",style: TextStyle(
                            color: Colors.white,
                            fontSize: 20
                        ),),

                      ),
                    ),

                  ],
                ),
                const SizedBox(height: 50,),
                Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Container(
                      height: 250,
                      width: 250,
                      color: const Color(0xff9525a9),
                      alignment: Alignment.centerRight,
                      child: const RotatedBox(quarterTurns: 1,
                        child: Text("Container 3",style: TextStyle(
                            color: Colors.white,
                            fontSize: 20
                        ),),
                      ),
                    ),
                    Container(
                      height: 200,
                      width: 200,
                      decoration: const BoxDecoration(
                          color: Color(0xffffc107),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey,
                              offset:  Offset(4.0,4.0),
                              blurRadius: 5.0,
                              spreadRadius: 2.0,
                            ),
                          ]
                      ),
                      alignment: Alignment.bottomCenter,
                      child:const  Text("Container 4",style: TextStyle(
                          color: Colors.white,
                          fontSize: 20
                      ),),

                    ),

                  ],
                ),
                const SizedBox(height: 40,),
                Padding(
                  padding: const EdgeInsets.all(40.0),
                  child: ElevatedButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>const Screen2()));
                  }, child:const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Next",style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700

                      ),),
                     Icon(Icons.arrow_forward_rounded,)
                    ],
                  ),


                  ),
                )
              ],
            ),
          )),
    );
  }
}
