import 'package:flutter/material.dart';

class FirstButton extends StatefulWidget {
  const FirstButton({super.key});

  @override
  State<FirstButton> createState() => _FirstButtonState();
}

class _FirstButtonState extends State<FirstButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
          print("It's Buy Now.");

      },
      child: Container(
          width: 200,
          height: 40,
          decoration: BoxDecoration(
              color: Colors.teal,
              borderRadius:const BorderRadius.only(
                topLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
              boxShadow: [
                BoxShadow(
                    color: Colors.grey.withOpacity(0.3),
                    spreadRadius: 0.5,
                    blurRadius: 3.0,
                    offset: const Offset(2.0, 6.0))
              ]),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.shopping_bag, color: Colors.white),
              SizedBox(
                width: 10,
              ),
              Text(
                "Buy Now",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ],
          )),
    );
  }
}
