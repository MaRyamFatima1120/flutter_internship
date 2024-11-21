import 'package:flutter/material.dart';

import 'horizontal_singlechild_scroll.dart';

class MySingleChildScrollView extends StatefulWidget {
  const MySingleChildScrollView({super.key});

  @override
  State<MySingleChildScrollView> createState() => _MySingleChildScrollViewState();
}

class _MySingleChildScrollViewState extends State<MySingleChildScrollView> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        titleSpacing: 2.0,
        centerTitle: true,
        title: const Text("Learn All List Widgets",style: TextStyle(color:Colors.white),),
        leading:const Icon(Icons.home),
        actions: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: IconButton(
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>HorizontalSinglechildScroll()));
              },//Anonymous Function
              icon: const Icon(Icons.arrow_forward_ios_sharp),
            ),
          ),

        ],
        iconTheme:const IconThemeData(
          color: Colors.white,
        ),
      ),
          body:SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  height: 300,
                  color: Colors.redAccent,
                ),
                Container(
                  width: double.infinity,
                  height: 300,
                  color: Colors.deepPurpleAccent,
                ),
                Container(
                  width: double.infinity,
                  height: 300,
                  color: Colors.deepOrangeAccent,
                ),
                Container(
                  width: double.infinity,
                  height: 300,
                  color: Colors.redAccent,
                ),
              ],
            ),
          ),
    ));
  }
}
