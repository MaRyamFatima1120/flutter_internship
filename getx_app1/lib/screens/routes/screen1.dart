import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_common/get_reset.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:getx_app1/screens/routes/screen2.dart';

class Screen1 extends StatefulWidget {
  const Screen1({super.key});

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {

  var counter = 0.obs;

  void incrementCounter(){
    counter++;
  }

  void decrementCounter(){
    counter--;

  }

  @override
  Widget build(BuildContext context) {
    print("Rebuild $counter");
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        centerTitle: true,
        title: const Text("Screen 1", style: TextStyle(
          color: Colors.white
        ),),
      ),

      body: Container(
        color: Colors.white,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [

            // InkWell(
            //   onTap: (){
            //     Get.to(
            //       const Screen2(),
            //       arguments: {"name": "Arslan", "job" : "Flutter Developer"});
            //   },
            //   child: const ScreenButton(
            //     buttonText: "Go Next",
            //     buttonColor: Colors.teal,
            //   ),
            // ),
            // const SizedBox(height: 20,),



            // InkWell(
            //   onTap: (){
            //     Get.toNamed("/screenThree");
            //   },
            //   child: const ScreenButton(
            //     buttonText: "Go Back",
            //     buttonColor: Colors.red,
            //   ),
            // ),

             Obx(()=>Text("$counter", style: const TextStyle(
               fontSize: 52,
             ),),),

            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                foregroundColor: Colors.white,
              ),
              onPressed: (){
                decrementCounter();
              },
              child: const Icon(Icons.remove),
            ),

            
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          incrementCounter();
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}



// Custom Components


class ScreenButton extends StatefulWidget {
  final String buttonText;
  final Color buttonColor;
  const ScreenButton({super.key, required this.buttonText, required this.buttonColor} );

  @override
  State<ScreenButton> createState() => _ScreenButtonState();
}

class _ScreenButtonState extends State<ScreenButton> {
  @override
  Widget build(BuildContext context) {

    return Container(
      height: 60,
      width: 180,
      decoration: BoxDecoration(
          color: widget.buttonColor,
          borderRadius: BorderRadius.circular(12.0),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.4),
              spreadRadius: 4.0,
              blurRadius: 4.0,
              offset: const Offset(2.0, 2.0),
            ),
          ]
      ),
      child: Center(
        child: Text("${widget.buttonText} ", style: const TextStyle(
          color: Colors.white,
          fontSize: 22,
        ),),
      ),
    );
  }
}

