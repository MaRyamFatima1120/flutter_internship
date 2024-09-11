import 'package:flutter/material.dart';
import 'package:food_delivery/screen/login.dart';
import 'package:food_delivery/screen/widget/rounded_button.dart';
import 'package:food_delivery/screen/widget/text_form_field.dart';

class ForgetScreen extends StatefulWidget {
  const ForgetScreen({super.key});

  @override
  State<ForgetScreen> createState() => _ForgetScreenState();
}

class _ForgetScreenState extends State<ForgetScreen> {
  final _formKey = GlobalKey<FormState>();
  final _email = TextEditingController();

  String? validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please Enter your Email';
    }
    if (!RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(value)) {
      return "Please Enter a valid email address";
    }
    return null;
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(

        appBar: AppBar(

        ),
          body: SingleChildScrollView(
            child: Container(
              margin: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Forgot password?",
                    style: Theme.of(context)
                        .textTheme
                        .titleMedium
                        ?.copyWith(fontSize:40),
                  ),
                  const SizedBox(height: 10,),
                  Text(
                    "Enter your email address and we’ll send you confirmation code to reset your password.",
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      color: const Color(0xFF878787),
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Form(
                    key: _formKey,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        TextFormField1(
                          hintText: "Enter Email",
                          labelText: "Email Address",
                          keyboardType: TextInputType.text,
                          controller: _email,
                          validator: validateEmail,
                        ),
                        const SizedBox(height: 40),
                        TextButton(
                            onPressed: () {
                              if (_formKey.currentState?.validate() ?? false) {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                      backgroundColor: Color(0xFFFE8C00),
                                      content: Text(
                                        "Continue",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w700,
                                        ),
                                      )),
      
                                );
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginScreen()));
                              }
                            },
                            child: const RoundedButton(
                              text: "Continue",
                            )),
      
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )),
    );
  }
}
