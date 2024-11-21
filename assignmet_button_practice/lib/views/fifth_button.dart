import 'package:flutter/material.dart';
class CircleShape1 extends StatefulWidget {
  const CircleShape1({super.key});

  @override
  State<CircleShape1> createState() => _CircleShape1State();
}

class _CircleShape1State extends State<CircleShape1> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap:(){
        print("Icon Button is Tapped.");
      },
      child: Container(
        width: 70,
        height: 70,

        decoration: BoxDecoration(
          color: Color(0xFFea1e63),
          shape: BoxShape.circle,
        ),
        child: Icon(Icons.favorite,color: Colors.white,size:35,),
      ),
    );
  }
}
