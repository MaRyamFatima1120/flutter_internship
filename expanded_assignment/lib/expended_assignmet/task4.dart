import 'package:flutter/material.dart';

class Design4 extends StatefulWidget {
  const Design4({super.key});

  @override
  State<Design4> createState() => _Design4State();
}

class _Design4State extends State<Design4> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Column(
        children: [
          //First
          SizedBox(height: 20,),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 2,
                  child: Container(
                    margin: const EdgeInsets.all(8.0),
                    height: 50,
                    decoration: BoxDecoration(
                      color: const Color(0xFF0f4fb3),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Container(
                    margin: const EdgeInsets.all(8.0),
                    height: 50,
                    decoration: BoxDecoration(
                      color: const Color(0xFF5ba5ee),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    margin: const EdgeInsets.all(8.0),
                    height: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        border: Border.all(
                          color: const Color(0xFF0e4fb0),
                        )),
                  ),
                ),
              ],
            ),
          ),
          //Second
          Expanded(
              flex:2,
              child: Expanded(
                child: Container(
                  margin:const EdgeInsets.only(left: 8.0,right: 8.0),
                  height: 250,
                  child: Row(
                    children: [
                      Expanded(
                        flex: 3,
                        child: Column(
                          children: [
                            Expanded(
                              child: Container(
                                margin: const EdgeInsets.all(10.0),
                                width: 200,
                                height: 100,
                                decoration: BoxDecoration(
                                  border: Border.all(color: const Color(0xFF0f4fb3),)
                                ),

                              ),

                            ),
                            Expanded(

                              child: Container(
                                margin: const EdgeInsets.all(10.0),
                                width: 200,
                                height: 100,
                                color:  Colors.purple,

                              ),
                            ),
                          ],
                        ),
                      ),

                      Expanded(
                        child: Container(
                          margin: const EdgeInsets.all(10.0),
                          height: 400,
                          color: const Color(0xFF0f4fb3),

                        ),
                      ),
                    ],
                  ),
                )
              )),

          //Third Last
          Expanded(
              child: Container(
                height: 200,
                margin:const EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  color: const Color(0xFF5ba5eb),
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Expanded(
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          margin:const EdgeInsets.all(20.0),
                          height: 50,
                          decoration: BoxDecoration(
                            color: const Color(0xFF0f4fb3),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          margin:const EdgeInsets.all(20.0),
                          height: 50,
                          decoration: BoxDecoration(
                            color: const Color(0xFF0f4fb3),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )),
          //Second Last
          Expanded(
              child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 200,
              decoration: BoxDecoration(
                color: const Color(0xFF0f4fb3),
                borderRadius: BorderRadius.circular(20.0),
              ),
            ),
          )),
          //Last
          Expanded(
              child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 200,
              decoration: BoxDecoration(
                color: const Color(0xFF0f4fb3),
                borderRadius: BorderRadius.circular(20.0),
              ),
            ),
          )),
        ],
      ),
    ));
  }
}
