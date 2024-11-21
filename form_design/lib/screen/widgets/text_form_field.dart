import 'package:flutter/material.dart';

class TextFormField1 extends StatelessWidget {
  const TextFormField1({
    super.key,
    required this.label,
    this.controller,
    this.keyboardType,
    this.validator,
    this.obscureText = false,
    this.iconButton
  });

  final String label;
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final String? Function(String?)? validator;
  final bool obscureText;
  final IconButton? iconButton;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      keyboardType: keyboardType,
      validator: validator,
      obscureText: obscureText,

      // style:const TextStyle(color:Colors.white),
      decoration: InputDecoration(
        label: Text(
          label.toUpperCase(),
          style: const TextStyle(
              fontSize: 16, color: Colors.black, fontWeight: FontWeight.bold),
        ),
        suffixIcon: iconButton,

        enabledBorder:OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
            borderSide:const BorderSide(
              color: Color(0xff0d4a8d),
              width: 2,
            ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide:const BorderSide(
            color: Color(0xff0d4a8d),
            width: 2,
          ),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide:const BorderSide(
            color: Colors.redAccent,
            width: 2,
          ),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide:const BorderSide(
            color: Colors.redAccent,
            width: 2,
          ),
        ),
      ),
    );
  }
}
