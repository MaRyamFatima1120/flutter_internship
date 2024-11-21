import 'dart:ui';

import 'package:flutter/material.dart';

class OutLinedButton extends StatefulWidget {
  const OutLinedButton({super.key});

  @override
  State<OutLinedButton> createState() => _OutLinedButtonState();
}

class _OutLinedButtonState extends State<OutLinedButton> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        print("It is OutLined Button.");
      },
      child: Container(
        width: 200,
        height: 60,
        
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: Colors.blue,
      
          )
        ),
        child:const Center(child:Text("Outlined Button",style: TextStyle(color:Colors.blue,fontWeight: FontWeight.bold,fontSize: 20),)),
      ),
    );
  }
}
