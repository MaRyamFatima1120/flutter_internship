import 'package:flutter/material.dart';

class GradientButton extends StatefulWidget {
  const GradientButton({super.key});

  @override
  State<GradientButton> createState() => _GradientButtonState();
}

class _GradientButtonState extends State<GradientButton> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        print("It's Gradient Button");
      },
      child: Container(
        width: 200,
        height: 60,
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(50),
          gradient: const LinearGradient(
              colors: [Color(0xFF1b95df), Color(0xFF069596)]),
        ),
        child:const Center(
            child: Text(
          "Gradient Button",
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16),
        )),
      ),
    );
  }
}
