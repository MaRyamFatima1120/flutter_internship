import 'package:flutter/material.dart';

class SecondButton extends StatefulWidget {
  const SecondButton({super.key});

  @override
  State<SecondButton> createState() => _SecondButtonState();
}

class _SecondButtonState extends State<SecondButton> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        print("It's also Buy Now.");
      },
      child: Container(
        height: 60,
        width: 200,
        decoration: BoxDecoration(
          color: const Color(0xFFb2ff59),
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.shopping_cart,
            ),
            SizedBox(
              height: 10,
            ),
            Text("Buy Now")
          ],
        ),
      ),
    );
  }
}
