import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Screen3 extends StatefulWidget {
  const Screen3({super.key});

  @override
  State<Screen3> createState() => _Screen3State();
}

class _Screen3State extends State<Screen3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurpleAccent,
        centerTitle: true,
        title: const Text("Screen 3", style: TextStyle(
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

            ElevatedButton(
              onPressed: (){
                // Get.back();
                Navigator.pop(context);
              },
              child: const Text("Go Back"),
            ),



          ],
        ),
      ),
    );
  }
}
