import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:form_assignment/screen/dashBoard.dart';
import 'package:form_assignment/screen/widget/text_field.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  final _email = TextEditingController();
  final _password = TextEditingController();
  bool _obscureText=true;
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
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;

    double getResponsiveSize(double baseSize, {double minSize = 12, double maxSize = 55}) {
      double scaleFactorWidth = screenWidth / 375.0; // base width
      double scaleFactorHeight = screenHeight / 812.0; // base height
      double scaleFactor = (scaleFactorWidth + scaleFactorHeight) / 2;

      double scaledSize = baseSize * scaleFactor;
      return scaledSize.clamp(minSize, maxSize);
    }

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
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
              Text(
                "Brand",
                style: GoogleFonts.yellowtail(
                    textStyle: TextStyle(
                  color: Colors.white,
                  fontSize: getResponsiveSize(50),
                )),
              ),
              SizedBox(
                height:screenHeight * 0.03 ,
              ),
              Form(
                key: _formKey,
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: screenWidth * 0.1, vertical: screenHeight * 0.02),
                      child: TextFormField1(
                        keyboardType: TextInputType.emailAddress,
                        label: 'Email',
                        controller: _email,
                        validator: validateEmail,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: screenWidth * 0.1, vertical: screenHeight * 0.02),
                      child: TextFormField1(
                        keyboardType: TextInputType.text,
                        label: 'Password',
                        obscureText: _obscureText,
                        controller: _password,
                        iconButton: IconButton(

                          onPressed: (){
                            setState(() {
                              _obscureText=!_obscureText;
                            });
                          }, icon: Icon(
                          _obscureText?Icons.visibility:Icons.visibility_off,color: Colors.white,
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
              SizedBox(
                height:screenHeight * 0.05 ,
              ),
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
                  width: screenWidth * 0.7,
                  height: screenHeight * 0.07,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  child: Center(
                    child: Text(
                      "Login".toUpperCase(),
                      style: TextStyle(
                        color:const Color(0xFF064c76),
                        fontWeight: FontWeight.bold,
                        fontSize: getResponsiveSize(18),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height:screenHeight * 0.05 ,
              ),
              Align(
                alignment: Alignment.topCenter,
                child: InkWell(
                  onTap: () {},
                  child: Text("Forget Password?",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize:getResponsiveSize(16),
                        fontWeight: FontWeight.w500,
                        //decoration: TextDecoration.underline,
                        //decorationColor: Colors.white,
                        //decorationThickness: 3
                      )),
                ),
              ),
              SizedBox(
                height:screenHeight * 0.01,
              ),
               Row(
                children: [
                  Expanded(
                    child: Divider(
                      color: Colors.white,
                      height: 5,
                      indent:screenWidth * 0.08,
                      endIndent:screenWidth * 0.08,
                      thickness: screenWidth * 0.001,
                    ),
                  ),
                  Text("OR",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize:  getResponsiveSize(14),
                        fontWeight: FontWeight.w500,
                        //decoration: TextDecoration.underline,
                        //decorationColor: Colors.white,
                        //decorationThickness: 3
                      )),
                  Expanded(
                    child: Divider(
                      color: Colors.white,
                      height: 5,
                      indent:screenWidth * 0.08,
                      endIndent:screenWidth * 0.08,
                      thickness:screenWidth * 0.001,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height:screenHeight * 0.02,
              ),
              //Login With Facebook
              InkWell(
                onTap: () {
                  print("Login with Facebook");
                },
                child: Container(
                  width: screenWidth * 0.7,
                  height: screenHeight * 0.07,
                  decoration: BoxDecoration(
                    color: const Color(0xFF435eae),
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  child: Center(
                    child: Text(
                      "Log In with Facebook".toUpperCase(),
                      style:  TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize:  getResponsiveSize(14),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
