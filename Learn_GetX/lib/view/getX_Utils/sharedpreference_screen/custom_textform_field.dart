import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final TextInputType keyboardType;
  final TextEditingController controller;
  final Color enabledColor;
  final Color focusedColor;
  final Color focusedError;
  final String? hintText;
  final TextStyle? hintTextStyle;
  final String? Function(String?)? validator;
  final bool obscureText;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final TextStyle? style;
  final int? maxLines;


  const CustomTextFormField(
      {super.key,
      required this.keyboardType,
      required this.controller,
      required this.enabledColor,
      required this.focusedColor,
      required this.focusedError,
      required this.hintText,
      this.hintTextStyle,
      this.validator,
      this.obscureText = false,
      this.suffixIcon,
      this.prefixIcon,
      this.style,
        this.maxLines
      });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        style: style,
          maxLines:maxLines ,
          keyboardType: keyboardType,
          controller: controller,
          validator: validator,
          obscureText: obscureText,
          decoration: InputDecoration(
            prefixIcon: prefixIcon,
            suffixIcon: suffixIcon,
            hintText: hintText,
            hintStyle: hintTextStyle ??
                const TextStyle(
                  color: Color(0xff999999),
                ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0),
              borderSide: BorderSide(
                color: enabledColor,
              ),
            ),
            errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0),
              borderSide: const BorderSide(
                color: Colors.redAccent,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0),
              borderSide: BorderSide(color: focusedColor),
            ),
            focusedErrorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0),
              borderSide: BorderSide(
                color: focusedError,
              ),
            ),
          )),
    );
  }
}
