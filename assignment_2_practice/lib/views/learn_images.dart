import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class LearnImages extends StatefulWidget {
  const LearnImages({super.key});

  @override
  State<LearnImages> createState() => _LearnImagesState();
}

class _LearnImagesState extends State<LearnImages> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image(
            image: const AssetImage(
              "assets/images/download.jpg",
            ),
            width: double.infinity,
            fit: BoxFit.fitWidth,
            color: Colors.black.withOpacity(0.8),
            colorBlendMode: BlendMode.softLight,
            filterQuality: FilterQuality.high,
            semanticLabel: "A footballer is playing with football",
            
          ),
          const SizedBox(height: 20,),
          Text("Task",style: TextStyle(fontFamily: "Roboto-Black",fontSize: 30),),
          Container(
            height: 300,
            width: 300,
            decoration: BoxDecoration(
              color: Colors.black,
              shape: BoxShape.circle,
             image: DecorationImage(image: AssetImage(
               "assets/images/download.jpg"
             ),
               fit: BoxFit.cover,

             ),


             // borderRadius: BorderRadius.only(topLeft:Radius.circular(150), bottomLeft: Radius.circular(150),bottomRight: Radius.circular(50),topRight: Radius.circular(50),

              )
                ,
            ),
        ],
      ),
    ));
  }
}
