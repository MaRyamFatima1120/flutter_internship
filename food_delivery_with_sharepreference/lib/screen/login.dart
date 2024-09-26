import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery/screen/dashboardscreen.dart';
import 'package:food_delivery/screen/forget.dart';
import 'package:food_delivery/screen/signup.dart';
import 'package:food_delivery/screen/widget/rounded_button.dart';
import 'package:food_delivery/screen/widget/text_form_field.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  final _email = TextEditingController();
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
              "Login to your\naccount.",
              style: Theme.of(context)
                  .textTheme
                  .titleMedium
                  ?.copyWith(fontSize: 45),
            ),
            Text(
              "Please sign in to your account",
              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    color: const Color(0xFF878787),
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
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
                      labelText: "Password",
                      hintText: "Enter password",
                      keyboardType: TextInputType.text,
                      validator: validateData,
                      controller: _password,
                      obscureText: true),
                  const SizedBox(height: 20),
                  Align(
                    alignment: Alignment.topRight,
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>ForgetScreen()));
                      },
                      child: const Text(
                        "Forget password?",
                        style: TextStyle(
                          fontSize: 16,
                          color: Color(0xFFFE8C00),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  TextButton(
                      onPressed: () async{
                        if (_formKey.currentState?.validate() ?? false) {

                         SharedPreferences sp= await SharedPreferences.getInstance();
                         
                         sp.setString("email", _email.text.toString());
                         sp.setString("password", _password.text.toString());
                         sp.setBool("isLogin", true);
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>const DashboardScreen()));
                        }
                      },
                      child: const RoundedButton(
                        text: "Sign In",
                      )),
                  Text.rich (
                    TextSpan(
                      children: [
                        const TextSpan(
                          text: "Don't hava an account?",
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,

                          ),
                        ),
                        TextSpan(
                          text: "Register",
                          style: const TextStyle(
                            fontSize: 18,
                            color: Color(0xFFFE8C00),

                          ),
                            recognizer:TapGestureRecognizer()..onTap =(){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>const RegisterScreen()));
                            }
                        ),


                      ]
                    )
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    )));
  }
}
