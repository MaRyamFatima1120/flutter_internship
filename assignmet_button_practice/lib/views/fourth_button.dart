import 'package:flutter/material.dart';

class ElevatedButton1 extends StatefulWidget {
  const ElevatedButton1({super.key});

  @override
  State<ElevatedButton1> createState() => _ElevatedButton1State();
}

class _ElevatedButton1State extends State<ElevatedButton1> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        print("Elevated Button");
      },
      child: Container(
        width: 200,
        height: 60,

        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              spreadRadius: 2,
              blurRadius: 5,
              offset:const Offset(2.0,2.0)

            ),
          ],
        ),
        child: Center(child: Text("Elevate Button",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),)),
      ),
    );
  }
}
