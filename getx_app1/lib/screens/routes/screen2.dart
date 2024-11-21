import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:getx_app1/screens/routes/screen3.dart';

class Screen2 extends StatefulWidget {
  const Screen2({super.key});

  @override
  State<Screen2> createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {

  late String name;
  late String job;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    name = Get.arguments["name"];
    job = Get.arguments["job"];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrangeAccent,
        centerTitle: true,
        title: const Text("Screen 2", style: TextStyle(
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

            Text(name),
            Text(job),


            SizedBox(height: 30,),
            ElevatedButton(

              onPressed: (){
                Get.to(Screen3());
              },
              child: Text("Go Next"),
            ),

            SizedBox(height: 30,),

            ElevatedButton(
              onPressed: (){
                Get.back();
              },
              child: Text("Go Back"),
            ),

          ],
        ),
      ),
    );
  }
}
