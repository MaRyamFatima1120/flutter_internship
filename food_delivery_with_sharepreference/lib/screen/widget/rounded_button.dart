import 'package:flutter/material.dart';
class RoundedButton extends StatelessWidget {
  const RoundedButton({super.key,required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      height: 70,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50.0),
        color: const Color(0xFFFE8C00),
      ),
      child: Center(
        child: Text(text,style: Theme.of(context).textTheme.titleMedium?.copyWith(
          color: Colors.white,
        ),),
      ),
    );
  }
}
