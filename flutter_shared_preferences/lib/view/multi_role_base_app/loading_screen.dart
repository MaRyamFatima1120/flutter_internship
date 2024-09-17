import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_shared_preferences/view/multi_role_base_app/admin/admin_screen.dart';
import 'package:flutter_shared_preferences/view/multi_role_base_app/buyer/buyer_screen.dart';
import 'package:flutter_shared_preferences/view/multi_role_base_app/registration/login_screen.dart';
import 'package:flutter_shared_preferences/view/multi_role_base_app/seller/seller_screen.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoadingScreen extends StatefulWidget {
  const LoadingScreen({super.key});

  @override
  State<LoadingScreen> createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  // Function to handle the role-based navigation and login check
  void getData() async {
    SharedPreferences sp = await SharedPreferences.getInstance();
    // Check if the user is logged in (default to false if not found)
    bool isLogin = sp.getBool("isLogin") ?? false;

    // If logged in, check the user's role
    if (isLogin) {
      String? user = sp.getString('user');
      // Use a timer for a 3-second delay before navigating to the appropriate screen
      if (user == "Admin") {
        Timer(const Duration(seconds: 3), () {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => const AdminScreen()),
          );
        });
      } else if (user == "Buyer") {
        Timer(const Duration(seconds: 3), () {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => const BuyerScreen()),
          );
        });
      } else {
        Timer(const Duration(seconds: 3), () {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => const SellerScreen()),
          );
        });
      }
    } else {
      // If not logged in, navigate to the Login Screen
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const LoginScreen()),
      );
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        width: 100.w,
        height: 100.h,
        decoration: const BoxDecoration(
            //   color: Colors.pink,
            image: DecorationImage(image: AssetImage("assets/images/bg.png"))),
      ),
    );
  }
}
