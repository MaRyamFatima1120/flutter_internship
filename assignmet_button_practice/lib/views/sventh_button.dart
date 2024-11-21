import 'package:flutter/material.dart';

class CustomButton extends StatefulWidget {
  const CustomButton({super.key});

  @override
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        print("It's Custom Button.");

      },
      child: Container(
          height: 70,
          width: 200,
          decoration: BoxDecoration(
            color: Color(0xFFfc9702),
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(5),
              topLeft: Radius.circular(20),
              topRight: Radius.circular(5),
              bottomRight: Radius.circular(20),

              
            ),

          ),
          child: const Center(
            child: Text(
              "Custom Button",
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          )),
    );
  }
}
