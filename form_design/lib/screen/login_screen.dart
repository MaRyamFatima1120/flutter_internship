import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:form_design/screen/sign_up_screen.dart';
import 'package:form_design/screen/widgets/text_form_field.dart';
import 'dashboard.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  final _email = TextEditingController();
  final _password = TextEditingController();
  bool _obscureText = true;

  String? validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return "Please Enter Email";
    }
    if (!RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(value)) {
      return "Please Enter a valid email address";
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 200,
            width: 200,
            decoration: const BoxDecoration(
              image:
                  DecorationImage(image: AssetImage("assets/images/bg1.png")),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Center(
              child: Text(
            "Log in Now",
            style: Theme.of(context).textTheme.titleMedium,
          )),
          Center(
              child: Text(
            "Please Login to continue using our app",
            style: Theme.of(context).textTheme.titleSmall,
          )),
          Form(
            key: _formKey,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 30.0, vertical: 15.0),
                  child: TextFormField1(
                    keyboardType: TextInputType.emailAddress,
                    label: 'Email',
                    controller: _email,
                    validator: validateEmail,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 30.0, vertical: 15.0),
                  child: TextFormField1(
                    keyboardType: TextInputType.text,
                    label: 'Password',
                    obscureText: _obscureText,
                    controller: _password,
                    iconButton: IconButton(
                      onPressed: () {
                        setState(() {
                          _obscureText = !_obscureText;
                        });
                      },
                      icon: Icon(
                        _obscureText ? Icons.visibility : Icons.visibility_off,
                        color: const Color(0xff0d4a8d),
                      ),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Please Enter Password";
                      }
                      return null;
                    },
                  ),
                ),
              ],
            ),
          ),

          Align(
              alignment: Alignment.topRight,
              widthFactor: 2.5,
              child: TextButton(
                onPressed: (){
                  print("Forget Password");
                },
                  child: Text("Forget Password?",style: Theme.of(context).textTheme.titleSmall,))),
          InkWell(
            onTap: () {
              if (_formKey.currentState?.validate() ?? false) {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const DashboardScreen()));
              }
            },
            child: Container(
              margin: const EdgeInsets.all(30.0),
              width: double.infinity,
              height: 70,
              decoration: BoxDecoration(
                  color: const Color(0xff0d4a8d),
                  borderRadius: BorderRadius.circular(10.0)),
              child: const Center(
                child: Text(
                  "Log In",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Don't hava an account?",
                style: Theme.of(context).textTheme.titleSmall,
              ),
              TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SignUpScreen()));
                  },
                  child: Text(
                    "Sign Up",
                    style: Theme.of(context).textTheme.titleSmall?.copyWith(
                        fontWeight: FontWeight.bold,
                        color: const Color(0xff0d4a8d)),
                  )),
            ],
          ),
          Text(
            "Or connect with",
            style: Theme.of(context).textTheme.titleSmall?.copyWith(
                fontWeight: FontWeight.bold, color: Colors.black, fontSize: 20),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.facebook_rounded,
                  color: Color(0xff5caccc),
                  size: 30,
                ),
              ),
              Container(
                margin:  const EdgeInsets.symmetric(horizontal: 5.0),
                width: 30,
                height: 30,
                decoration: const BoxDecoration(
                    color: Color(0xff5caccc), shape: BoxShape.circle),
                child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      FontAwesomeIcons.twitter,
                      color: Colors.white,
                      size: 15,
                    )),
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 5.0),
                width: 30,
                height: 30,
                decoration: const BoxDecoration(
                    color: Color(0xff5caccc), shape: BoxShape.circle),
                child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      FontAwesomeIcons.linkedinIn,
                      color: Colors.white,
                      size: 15,
                    )),
              ),
            ],
          ),
        ],
      ),
    ));
  }
}
