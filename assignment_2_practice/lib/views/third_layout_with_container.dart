import 'package:assignment_2_practice/views/fourth_layout_with_container.dart';
import 'package:flutter/material.dart';

class ThirdScreen extends StatefulWidget {
  const ThirdScreen({super.key});

  @override
  State<ThirdScreen> createState() => _ThirdScreenState();
}

class _ThirdScreenState extends State<ThirdScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xFF0f4eb3),
          iconTheme: const IconThemeData(color: Colors.white),
          actions: [
            IconButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>FourthScreen()));
            }, icon:const Icon(Icons.arrow_forward_ios_sharp,color: Colors.white,))
          ],
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 150,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5.0),
                    color:const Color(0xFF0f4eb3),
                  ),
                ),
                Container(
                  width: 115,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5.0),
                    color:const Color(0xFF5ba5ea),
                  ),
                ),
                Container(
                  width: 75,
                  height: 50,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color:const Color(0xFF0f4eb3),
                      width: 2.0,

                    ),
                    borderRadius: BorderRadius.circular(5.0),

                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [

                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 260,
                        height: 100,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color:const Color(0xFF0f4eb3),
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              width: 50,
                              height: 50,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color:const Color(0xFF5ba5ec),
                                  width: 2.0,


                                ),
                                borderRadius: BorderRadius.circular(2.0),

                              ),
                              child: const Icon(Icons.check,size:50,color: Color(0xFF5ba5ec),),
                            ),

                            Container(
                              height: 60,
                              width: 150,
                              decoration: BoxDecoration(
                                color: const Color(0xFF0e4fb0),
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: 60,
                      width: 260,
                      decoration: BoxDecoration(
                        color:const Color(0xFF5ba5ec),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                  ],
                ),
                const SizedBox(width: 5,),
                Container(
                  height: 200,
                  width: 100,
                  decoration: BoxDecoration(
                    color:const Color(0xFF0e4fb0),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20.0,),
            Container(
              height: 100,
              width: 370,
              decoration: BoxDecoration(
                color:const Color(0xFF5ba5ec),
                borderRadius: BorderRadius.circular(10.0),
              ),
              child:Row(
                mainAxisAlignment: MainAxisAlignment.start,

                children: [
                  const SizedBox(width:10,),
                  Container(
                    width: 150,
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.0),
                      color: const Color(0xFF0f4eb3),
                    ),

                  ),
                const SizedBox(width: 5,),

                  Container(
                    width: 150,
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.0),
                      color:const Color(0xFF0f4eb3),
                    ),
                  ),
                ],
              )
            ),
            const SizedBox(height: 20.0,),
            Container(
              height: 100,
              width: 370,
              decoration: BoxDecoration(
                color: const Color(0xFF0f4eb3),
                borderRadius: BorderRadius.circular(10.0),
              ),
            ),
            const SizedBox(height: 20.0,),
            Container(
              height: 100,
              width: 370,
              decoration: BoxDecoration(
                color: const Color(0xFF0f4eb3),
                borderRadius: BorderRadius.circular(10.0),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
