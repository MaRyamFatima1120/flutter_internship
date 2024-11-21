import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:form_assignment/screen/login_screen.dart';
import 'package:form_assignment/screen/widget/text_field.dart';
import 'package:google_fonts/google_fonts.dart';


class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  final _formKey =GlobalKey<FormState>();
  final _name =TextEditingController();
  final _email =TextEditingController();
  final _password =TextEditingController();
  bool _obscureText = true;

  String? validateEmail(String? value){
    if(value == null || value.isEmpty) {
      return "Please Enter Email";
    }
    if(!RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(value)){
      return "Please Enter a valid email address";
    }
    return null;
  }
  @override
  Widget build(BuildContext context) {
    var screenWidth =MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(


      body: SingleChildScrollView(
        child: Container(
          //height:double.infinity,
          width: screenWidth,
          height: screenHeight,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/1.jpg"),
              fit: BoxFit.fill,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              BackdropFilter(
                filter: ImageFilter.blur(
                  sigmaY: 4.0,
                  sigmaX: 4.0,
                ),
                child: Container(
                  color: Colors.black,
                ),
              ),
              Expanded(
                child: Center(
                  child: Text(
                    "Brand",
                    style: GoogleFonts.yellowtail(
                        textStyle: const TextStyle(
                      color: Colors.white,
                      fontSize: 55,
                    )),
                  ),
                ),
              ),
              SizedBox(
                  height: screenHeight * 0.005
              ),
              Expanded(
                flex:2,
                child: Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.1, vertical: screenHeight * 0.01),
                        child: TextFormField1(
                            keyboardType: TextInputType.text,
                            label: "Name",
                            controller: _name,
                            validator:  (value){
                              if(value == null || value.isEmpty) {
                                return "Name is required.";
                              }
                              return null;

                            }
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.1, vertical: screenHeight * 0.01),
                        child: TextFormField1(
                          keyboardType: TextInputType.emailAddress,
                          label: 'Email',
                          controller: _email,
                          validator: validateEmail,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.1, vertical: screenHeight * 0.01),
                        child: TextFormField1(
                          keyboardType: TextInputType.text,
                          label: 'Password',
                          obscureText: _obscureText,
                          iconButton: IconButton(
                              onPressed: (){
                                setState(() {
                                  _obscureText =!_obscureText;
                                });
                              }, icon:Icon(
                          _obscureText?Icons.visibility:Icons.visibility_off,
                            color: Colors.white,
                          )),
                          controller: _password,
                          validator: (value){
                            if(value == null || value.isEmpty) {
                              return "Please Enter Password";
                            }
                            return null;

                          },
                        ),
                      ),

                      SizedBox(
                          height: screenHeight * 0.1
                      ),
                      InkWell(
                        onTap: () {
                          if(_formKey.currentState?.validate()??false){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>const LoginScreen()));
                          }

                        },
                        child: Container(
                          width: screenWidth * 0.7,
                          height: screenHeight * 0.07,
                          decoration: BoxDecoration(
                            color: Colors.white,

                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          child: Center(
                            child: Expanded(
                              child: Text(
                                "Create Account".toUpperCase(),
                                style: const TextStyle(
                                  color: Color(0xFF064c76),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 24,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),

                ),
              ),
              /* Padding(
                padding:const EdgeInsets.symmetric(horizontal: 30.0, vertical:15.0),
                child: TextFormField1(
                  keyboardType: TextInputType.text,
                  label: "Name",
                  controller: _name,
                  validator:  (value){
                    if(value == null || value.isEmpty) {
                      return "Name is required.";
                    }
                    return null;

                  }
                ),
              ),
               Padding(
                padding:const EdgeInsets.symmetric(horizontal: 30.0, vertical: 15.0),
                child: TextFormField1(
                  keyboardType: TextInputType.emailAddress,
                  label: 'Email',
                  controller: _email,
                  validator: validateEmail,
                ),
              ),
              Padding(
                padding:const  EdgeInsets.symmetric(horizontal: 30.0, vertical: 15.0),
                child: TextFormField1(
                  keyboardType: TextInputType.text,
                  label: 'Password',
                  controller: _password,
                  validator: (value){
                    if(value == null || value.isEmpty) {
                      return "Please Enter Password";
                    }
                    return null;

                  },
                ),
              ),*/

            ],
          ),
        ),
      ),
    );
  }
}
