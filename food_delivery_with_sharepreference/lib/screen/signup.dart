import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery/screen/widget/rounded_button.dart';
import 'package:food_delivery/screen/widget/text_form_field.dart';

import 'login.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final _formKey = GlobalKey<FormState>();
  final _email = TextEditingController();
  final _user = TextEditingController();
  final _password = TextEditingController();

  String? validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please Enter your Email';
    }
    if (!RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(value)) {
      return "Please Enter a valid email address";
    }
    return null;
  }

  String? validateData(String? value) {
    if (value == null || value.isEmpty) {
      return "Please Enter your password";
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: SingleChildScrollView(
      child: Container(
        margin: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Create your new\naccount.",
              style: Theme.of(context)
                  .textTheme
                  .titleMedium
                  ?.copyWith(fontSize: 45),
            ),
            Text(
              "Create an account to start looking for the food you like",
              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    color: const Color(0xFF878787),
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
            ),
            const SizedBox(
              height: 30,
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
                  const SizedBox(height: 20),
                  TextFormField1(
                    labelText: "User Name",
                    hintText: "Enter User Name",
                    keyboardType: TextInputType.text,
                    validator: validateData,
                    controller: _user,
                  ),
                  const SizedBox(height: 20),
                  TextFormField1(
                      labelText: "Password",
                      hintText: "Enter password",
                      keyboardType: TextInputType.text,
                      validator: validateData,
                      controller: _password,
                      obscureText: true),
                  const SizedBox(height: 20),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text.rich(TextSpan(children: [
                      const TextSpan(
                        text: "I Agree with ",
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                        ),
                      ),
                      TextSpan(
                          text: "Terms of Services ",
                          style: const TextStyle(
                            fontSize: 18,
                            color: Color(0xFFFE8C00),
                          ),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              ScaffoldMessenger.of(context)
                                  .showSnackBar(SnackBar(
                                      content: Text(
                                "Terms of Services Page Opened.",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 24),
                              )));
                            }),
                      const TextSpan(
                        text: "and ",
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                        ),
                      ),
                      TextSpan(
                          text: "Privacy Policy",
                          style: const TextStyle(
                            fontSize: 18,
                            color: Color(0xFFFE8C00),
                          ),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              ScaffoldMessenger.of(context)
                                  .showSnackBar(SnackBar(
                                      content: Text(
                                "Privacy Policy Page Opened.",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 24),
                              )));
                            }),
                    ])),
                  ),
                  const SizedBox(height: 10),
                  TextButton(
                      onPressed: () {
                        if (_formKey.currentState?.validate() ?? false) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                                backgroundColor: Color(0xFFFE8C00),
                                content: Text(
                                  "Registered",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w700,
                                  ),
                                )),
                          );
                        }
                      },
                      child: const RoundedButton(
                        text: "Register",
                      )),
                  Text.rich(TextSpan(children: [
                    const TextSpan(
                      text: "Hava you an account?",
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                      ),
                    ),
                    TextSpan(
                        text: "Signin",
                        style: const TextStyle(
                          fontSize: 18,
                          color: Color(0xFFFE8C00),
                        ),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const LoginScreen()));
                          }),
                  ])),
                ],
              ),
            ),
          ],
        ),
      ),
    )));
  }
}
