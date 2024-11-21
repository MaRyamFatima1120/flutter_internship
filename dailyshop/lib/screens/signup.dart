

import 'package:dailyshop/screens/login.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        centerTitle: true,
        title: Text(
          "Signup Screen",
          style: GoogleFonts.aBeeZee(
              textStyle: const TextStyle(color: Colors.white)
          ),
        ),

        iconTheme: const IconThemeData(
          color: Colors.white,
        ),
      ),

      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [

            const SizedBox(
              height: 100,
            ),

            Text(
              "Signup Now",
              style: GoogleFonts.aBeeZee(
                  textStyle: const TextStyle(
                    fontSize: 32,
                  )
              ),
            ),
            const SizedBox(height: 10,),

            Text(
              "Please enter your valid email and \npassword to create your account.",
              textAlign: TextAlign.center,
              style: GoogleFonts.aBeeZee(
                  textStyle: const TextStyle(

                  )
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40.0, vertical: 30.0),
              child: TextFormField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  // label: Text("Email"),

                  labelText: "Email",
                  // labelStyle: TextStyle(color: Colors.deepPurple, fontSize: 20,),

                  prefixIcon: const Icon(Icons.email_outlined),

                  hintText: "johndeo@email.com",

                  focusedBorder: const OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.red,
                    ),
                  ),

                  border: const OutlineInputBorder(),

                  fillColor: Colors.grey.withOpacity(0.3),
                  filled: true,

                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40.0,),
              child: TextFormField(
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                  // label: Text("Email"),

                  labelText: "Phone",
                  // labelStyle: TextStyle(color: Colors.deepPurple, fontSize: 20,),

                  prefixIcon: const Icon(Icons.phone),

                  hintText: "+92 301 1234567",

                  focusedBorder: const OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.red,
                    ),
                  ),

                  border: const OutlineInputBorder(),

                  fillColor: Colors.grey.withOpacity(0.3),
                  filled: true,

                ),
              ),
            ),

            const SizedBox(height: 30,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40.0),
              child: TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                  // label: Text("Email"),

                  labelText: "Password",
                  // labelStyle: TextStyle(color: Colors.deepPurple, fontSize: 20,),

                  prefixIcon: const Icon(Icons.password),

                  suffixIcon: const Icon(Icons.visibility_off),

                  hintText: "Must be 8 characters",

                  focusedBorder: const OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.red,
                    ),
                  ),

                  border: const OutlineInputBorder(),

                  fillColor: Colors.grey.withOpacity(0.3),
                  filled: true,

                ),
              ),
            ),

            const SizedBox(height: 30.0,),


            Center(
              child: InkWell(
                onTap: (){

                },
                child: Container(
                  height: 50,
                  width: double.infinity,
                  margin: const EdgeInsets.symmetric(horizontal: 40.0),
                  decoration: BoxDecoration(
                    color: Colors.deepPurple,
                    borderRadius: BorderRadius.circular(30.0),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.6),
                        spreadRadius: 4.0,
                        blurRadius: 4.0,
                        offset: const Offset(2.0, 2.0),
                      )
                    ],
                  ),
                  child: const Center(
                    child: Text(
                      "Signup",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                      ),
                    ),
                  ),
                ),
              ),
            ),

            const SizedBox(height: 30,),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Already have an account? ",
                    style: GoogleFonts.aBeeZee(),
                  ),
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> const LoginScreen()));
                    },
                    child: Text(
                      "login",
                      style: GoogleFonts.aBeeZee(
                        textStyle: const TextStyle(
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}


