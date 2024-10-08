import 'package:flutter/material.dart';

class TextFormField1 extends StatefulWidget {
  TextFormField1({
    super.key,
    this.hintText,
    this.labelText,
    this.controller,
    this.validator,
    this.keyboardType,
    this.obscureText=false,

  });

  final String? hintText;
  final String? labelText;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final TextInputType? keyboardType;
  final bool obscureText;


  @override
  State<TextFormField1> createState() => _TextFormField1State();
}

class _TextFormField1State extends State<TextFormField1> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(

      keyboardType:widget.keyboardType ,
      controller: widget.controller,
      validator: widget.validator,
      obscureText: widget.obscureText,


      decoration: InputDecoration(

          hintText: widget.hintText,
          hintStyle: Theme.of(context).textTheme.titleMedium?.copyWith(
            fontSize: 20,
            fontWeight: FontWeight.w400,
            color: const Color(0xFF878787)
          ),
          labelText: widget.labelText,
          labelStyle: Theme.of(context).textTheme.titleMedium?.copyWith(
            fontSize: 20,
            fontWeight: FontWeight.w700,
          ),

          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: const BorderSide(
              color: Colors.black,
            ),
          ),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0),
              borderSide: const BorderSide(color: Color(0xFFFE8C00))),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide:const BorderSide(
              color: Colors.redAccent,
            ),),
        focusedErrorBorder:  OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide:const BorderSide(
            color: Colors.redAccent,
          ),),
      ),
    );
  }
}
