


import 'package:flutter/material.dart';

class MyCard extends StatefulWidget {
  const MyCard({super.key});

  @override
  State<MyCard> createState() => _MyCardState();
}

class _MyCardState extends State<MyCard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        elevation:54.0,
        title: const Text("Card Widget", style: TextStyle(color: Colors.white),),
      ),

      body: Column(
        children: [

          Container(
            height: 200,
            width: double.infinity,
            child: Card(
              elevation: 5.0,
              child: Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: Container(
                      margin: EdgeInsets.symmetric(vertical: 30.0, horizontal: 10),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/images/person1.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),

                  Expanded(
                    flex: 3,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [

                        Padding(
                          padding: const EdgeInsets.only(left: 20.0, top: 20),
                          child: Text("Card Title", style: TextStyle(
                            fontSize: 25,
                          ),),
                        ),

                        Padding(
                          padding: const EdgeInsets.only(left: 20.0, top: 5),
                          child: Text("Flutter Developer", style: TextStyle(
                            fontSize: 18,
                          ),),
                        ),

                        Padding(
                          padding: const EdgeInsets.only(left: 20.0, top: 10),
                          child: Text("Reference site about Lorem Ipsum, giving information on its origins", style: TextStyle(
                            fontSize: 14,
                          ),),
                        ),



                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),

        ],
      ),
    );
  }
}


