import 'package:flutter/material.dart';

class TextFormField1 extends StatelessWidget {
  const TextFormField1(
      {super.key,
      required this.label,
      this.controller,
      this.validator,
      this.obscureText = false,
      this.iconButton});

  final String label;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final bool obscureText;
  final IconButton? iconButton;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      validator: validator,
      obscureText: obscureText,
      decoration: InputDecoration(
        suffixIcon: iconButton,
        label: Center(
            child: Text(
          label,
          style:Theme.of(context).textTheme.titleSmall?.copyWith(
            color: Colors.black54,
          ),
        )),
        enabledBorder: const UnderlineInputBorder(
            borderSide: BorderSide(
          color: Color(0xff2d5cd3),
          width: 2,
        )),
        focusedBorder: const UnderlineInputBorder(
            borderSide: BorderSide(
          color: Color(0xff2d5cd3),
          width: 2,
        )),
        errorBorder: const UnderlineInputBorder(
            borderSide: BorderSide(
          color: Colors.redAccent,
          width: 2,
        )),
      ),
    );
  }
}

