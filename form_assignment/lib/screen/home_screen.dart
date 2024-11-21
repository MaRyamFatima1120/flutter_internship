import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:form_assignment/screen/login_screen.dart';
import 'package:form_assignment/screen/signup.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    DateTime now = DateTime.now();
    String formattedDate = DateFormat('dd, MMMM yyyy').format(now);
    String formattedTime = DateFormat("hh:mm a").format(now);

    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: screenHeight,
          width: screenWidth,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/1.jpg"),
              fit: BoxFit.fill,
            ),
          ),
          child: Stack(
            children: [
              BackdropFilter(
                filter: ImageFilter.blur(
                  sigmaY: 2.0,
                  sigmaX: 2.0,
                ),
                child: Container(
                  color: Colors.black.withOpacity(0.5),
                  height: screenHeight,
                  width: screenWidth,
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: screenWidth * 0.1, vertical: screenHeight * 0.1),
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
                  InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => const Signup()));
                    },
                    child: Container(
                      width: screenWidth * 0.7,
                      height: screenHeight * 0.1,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      child: Center(
                        child: Text(
                          "Sign Up".toUpperCase(),
                          style: const TextStyle(
                            color: Color(0xFF064c76),
                            fontWeight: FontWeight.bold,
                            fontSize: 24,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: screenHeight * 0.05,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const LoginScreen()));
                    },
                    child: Container(
                      width: screenWidth * 0.7,
                      height: screenHeight * 0.1,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5.0),
                          border: Border.all(
                              color: Colors.white,
                              width: 4,
                              strokeAlign: BorderSide.strokeAlignInside)),
                      child: Center(
                        child: Text(
                          "Login".toUpperCase(),
                          style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: screenHeight * 0.1,
                  ),
                  Text(
                    formattedTime,
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    formattedDate,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(
                    height: screenHeight * 0.01,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
