import 'package:flutter/material.dart';
import 'package:form_design_1/screen/dashboard_screen.dart';
import 'package:form_design_1/screen/login_screen.dart';
import 'package:form_design_1/screen/widget/text_form.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final _formKey = GlobalKey<FormState>();
  final _email = TextEditingController();
  final _name =TextEditingController();
  final _password = TextEditingController();
  bool _obscureText = true;

  //Function
  String? validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return "Please Enter Email";
    }
    if (!RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(value)) {
      return "Please Enter a valid Email Address";
    }

    return null;
  }
  @override
  Widget build(BuildContext context) {
     var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;
    var baseWidth = 375.0;
    var scaleFactor = screenWidth / baseWidth;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: ConstrainedBox(
            constraints: BoxConstraints(minHeight: screenHeight),
            child: IntrinsicHeight(
              child: Flex(
                direction: Axis.vertical,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child:CircleAvatar(
                      backgroundColor: const Color(0xff2d5cd3),
                      radius:screenWidth/7,
                      child: Icon(Icons.person,size: 40*scaleFactor,color: Colors.white,),

                    ),

                    /*Container(
                      margin: const EdgeInsets.only(top:30.0),
                      width: screenWidth,
                      height: screenHeight *0.3,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/images/download.png"))),
                    ),*/
                  ),
                  const SizedBox(height: 20,),
                  Text(
                    "Create your Account",
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      fontSize: 12 * scaleFactor,
                    ),
                  ),
                  Text(
                    "Please Signup & then Login",
                    style: Theme.of(context)
                        .textTheme
                        .titleSmall
                        ?.copyWith(fontSize: 12 * scaleFactor),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 30.0,
                          ),
                          child: TextFormField1(
                            label: "Name",
                            controller: _name,
                            obscureText: _obscureText,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return "Please Enter Name";
                              }
                              return null;
                            },
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 40.0,
                          ),
                          child: TextFormField1(
                            label: "Email Address",
                            controller: _email,
                            validator: validateEmail,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 30.0,
                          ),
                          child: TextFormField1(
                            label: "Password",
                            controller: _password,
                            obscureText: _obscureText,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return "Please Enter Password";
                              }
                              return null;
                            },
                            iconButton: IconButton(
                              onPressed: () {
                                setState(() {
                                  _obscureText = !_obscureText;
                                });
                              },
                              icon: Icon(
                                _obscureText ? Icons.visibility : Icons.visibility_off,
                                color: const Color(0xff2d5cd3),
                              ),
                            ),
                          ),
                        ),

                      ],
                    ),
                  ),
                  const SizedBox(height: 30,),
                  InkWell(
                    onTap:(){
                      if(_formKey.currentState?.validate()??false){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>const DashboardScreen()));

                      }
                    },
                    child: Container(
                      width: screenWidth *0.5,
                      height: screenHeight * 0.07,
                      color: const Color(0xff2d5cd3),
                      child: Center(child: Text("Sign Up",style: Theme.of(context).textTheme.titleMedium?.copyWith(color: Colors.white,fontSize: 13 * scaleFactor),)),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("You have an account?",style:Theme.of(context).textTheme.titleSmall?.copyWith(
                          fontSize: 14 * scaleFactor,
                          color: Colors.black87
                      ),),
                      TextButton(
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>const LoginScreen()));
                        },
                        child: Text("Login",style:Theme.of(context).textTheme.titleSmall?.copyWith(
                            fontSize: 14 * scaleFactor,
                            color: Colors.black87,
                            fontWeight: FontWeight.bold
                        ),),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
