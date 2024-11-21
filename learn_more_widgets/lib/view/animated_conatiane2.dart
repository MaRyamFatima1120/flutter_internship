import 'package:flutter/material.dart';
import 'package:learn_more_widgets/view/switch_widget.dart';

class AnimatedContainer2 extends StatefulWidget {
  const AnimatedContainer2({super.key});

  @override
  State<AnimatedContainer2> createState() => _AnimatedContainer2State();
}

class _AnimatedContainer2State extends State<AnimatedContainer2> {
  var _width = 200.0;
  var _height = 200.0;
  bool flag = true;

  Decoration  myDecor  = BoxDecoration(
    color: Colors.deepOrange,
    borderRadius: BorderRadius.circular(100.0),
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        title: const Text("Animated Container",style: TextStyle(
            color: Colors.white
        ),),
        actions: [
          IconButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>const SwitchWidget()));
          }, icon:const Icon(Icons.arrow_forward_rounded)),

        ],
        iconTheme:const IconThemeData(
            color: Colors.white
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: (){
              setState(() {
                if(flag){
                  _width  = 300;
                  _height =300;
                  myDecor =BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(150.0)

                  );

                  flag =false;
                }
                else{
                  _width = 200;
                  _height =200;
                  myDecor =BoxDecoration(
                      color: Colors.deepOrange,
                      borderRadius: BorderRadius.circular(100.0)

                  );
                  flag = true;
                }
              });
              ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content:  Text("Animated Container",
                    style: TextStyle(
                        color: Colors.white
                    ),
                  ),
                    //backgroundColor: Colors.deepOrange,
                  )
              );

            },
            child: Center(
              child: AnimatedContainer(
                width: _width,
                  height: _height,
                  decoration: myDecor,
                  duration: const Duration(
                    seconds: 2
                  )),
            ),
          )

        ],
      ),
    );
  }
}
