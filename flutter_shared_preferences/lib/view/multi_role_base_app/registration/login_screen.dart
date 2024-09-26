import 'package:flutter/material.dart';
import 'package:flutter_shared_preferences/view/multi_role_base_app/admin/admin_screen.dart';
import 'package:flutter_shared_preferences/view/multi_role_base_app/buyer/buyer_screen.dart';
import 'package:flutter_shared_preferences/view/multi_role_base_app/seller/seller_screen.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final List<String> data = ["Admin", "Buyer", "Seller"];
  String selectedOption = "Admin";
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _userController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  bool _obscureText = true;

  void showToggle() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  String? validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return "Please Enter Email";
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
    return Scaffold(
        backgroundColor: const Color(0xffF5F9FA),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                "Welcome back! Glad\nto see you, Again!",
                style: GoogleFonts.inter(
                    fontSize: 20.sp, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 1.h,
            ),
            Form(
              key: _formKey,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      controller: _emailController,
                      validator: validateEmail,
                      decoration: InputDecoration(
                        hintText: "Enter your Email",
                        hintStyle: GoogleFonts.inter(),
                        prefixIcon: const Icon(Icons.email_outlined),
                        prefixIconConstraints:
                            const BoxConstraints(minWidth: 60.0),
                        fillColor: const Color(0xffF5F9FA),
                        filled: true,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: TextFormField(
                      keyboardType: TextInputType.text,
                      controller: _passwordController,
                      obscureText: _obscureText,
                      validator: validateData,
                      decoration: InputDecoration(
                        hintText: "Enter your Password",
                        hintStyle: GoogleFonts.inter(),
                        prefixIcon: const Icon(Icons.password),
                        prefixIconConstraints:
                            const BoxConstraints(minWidth: 60.0),
                        suffixIcon: IconButton(
                          onPressed: showToggle,
                          icon: Icon(_obscureText
                              ? Icons.visibility
                              : Icons.visibility_off),
                          color: _obscureText ? Colors.black : Colors.redAccent,
                        ),
                        fillColor: const Color(0xffF5F9FA),
                        filled: true,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15.0, vertical: 15.0),
                      child: DropdownButtonFormField(
                        // isExpanded: true,
                        value: selectedOption,
                        items: data.map((String item) {
                          return DropdownMenuItem(
                              value: item,
                              child: Text(
                                item,
                                style: GoogleFonts.inter(),
                              ));
                        }).toList(),

                        onChanged: (String? value) {
                          if (value != null) {
                            setState(() {
                              selectedOption = value;
                            });
                          }
                        },
                        decoration: const InputDecoration(
                          labelText: 'Select an option',
                          labelStyle: TextStyle(color: Color(0xff231C1F)),
                          border: OutlineInputBorder(
                              borderSide: BorderSide(
                            color: Color(0xff231C1F),
                          )),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                            color: Color(0xff231C1F),
                          )),
                          fillColor: Color(0xffF5F9FA),
                          filled: true,
                        ),
                      )),
                  Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: TextButton(
                          onPressed: () {
                            print("Forget Screen");
                          },
                          child: Text(
                            "Forget Password",
                            style: GoogleFonts.inter(color: Colors.black),
                          ))),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: GestureDetector(
                      onTap: () async {
                        SharedPreferences sp =
                            await SharedPreferences.getInstance();

                        sp.setString("email", _emailController.text.toString());
                        sp.setString("user", selectedOption);
                        sp.setBool("isLogin", true);

                        var userInfo = sp.getString("user");

                        if (userInfo == "Admin") {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const AdminScreen()));
                        } else if (userInfo == "Buyer") {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const BuyerScreen()));
                        } else {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const SellerScreen()));
                        }
                      },
                      child: Container(
                        height: 45,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: const Color(0xff1d242d),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                          child: Text(
                            "Login ",
                            style: GoogleFonts.inter(
                              textStyle: const TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                  letterSpacing: 1,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),

                  // Do not have an account?
                  RichText(
                    text: TextSpan(children: <TextSpan>[
                      TextSpan(
                        text: "Don't have an account? ",
                        style: GoogleFonts.rubik(
                          textStyle: TextStyle(
                            color: Colors.black87.withOpacity(0.7),
                          ),
                        ),
                      ),
                      TextSpan(
                        text: "Sign up",
                        style: GoogleFonts.rubik(
                          textStyle: TextStyle(
                            color: Colors.black87.withOpacity(0.9),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      )
                    ]),
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
