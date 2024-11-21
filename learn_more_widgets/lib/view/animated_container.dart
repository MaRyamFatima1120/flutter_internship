import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:learn_more_widgets/view/animated_conatiane2.dart';

class AnimatedContainer1 extends StatefulWidget {
  const AnimatedContainer1({super.key});

  @override
  State<AnimatedContainer1> createState() => _AnimatedContainer1State();
}

class _AnimatedContainer1State extends State<AnimatedContainer1> {
  var _width =200.0;
  var _height =200.0;
  bool flag  = true;

  Decoration myDecor = BoxDecoration(
    borderRadius: BorderRadius.circular(2)
  );

  Color bgColor = Colors.blue;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text("Foo Animation",style: TextStyle(
          color: Colors.white
        ),),
        actions: [
          IconButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>const AnimatedContainer2()));
          }, icon:const Icon(Icons.arrow_forward_rounded)),

        ],
        iconTheme:const IconThemeData(
          color: Colors.white
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: (){
                setState(() {
                  if(flag){
                    _width = 300;
                    _height =150;
                    bgColor =Colors.deepPurple;
                    flag =false;

                  }
                  else{
                    _width =200.0;
                    _height =200.0;
                    bgColor =Colors.blue;
                    flag = true;
                  }

                });


              },
              child: AnimatedContainer(
                width: _width,
                  height: _height,
                  color: bgColor,
                  duration:const Duration(seconds: 2),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
