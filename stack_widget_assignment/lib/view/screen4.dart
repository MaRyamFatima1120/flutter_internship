import 'package:flutter/material.dart';
import 'package:stack_widget_assignment/view/screen5.dart';

class Screen4 extends StatefulWidget {
  const Screen4({super.key});

  @override
  State<Screen4> createState() => _Screen4State();
}

class _Screen4State extends State<Screen4> {
  final _email = TextEditingController();
  final _password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var widthSize = MediaQuery.of(context).size.width;
    var heightSize = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Container(
              width: widthSize,
              height: heightSize,
              color: const Color(0xfffd9921),
              child: Column(
                children: [
                  const SizedBox(
                    height: 100,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Login",
                          style: Theme.of(context)
                              .textTheme
                              .titleLarge
                              ?.copyWith(fontSize: 35),
                        ),
                        Text(
                          "Welcome back ! Please enter your details.",
                          style: Theme.of(context)
                              .textTheme
                              .titleMedium
                              ?.copyWith(color: Colors.white, fontSize: 15),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              top: 280,
              child: Container(
                width: widthSize,
                height: heightSize * 0.7,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    )),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: TextFormField(
                        decoration: const InputDecoration(
                            label: Text("Email"),
                            enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                    color: Color(0xfffd9921), width: 2)),
                            focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                              color: Color(0xfffd9921),
                              width: 2,
                            )),
                            suffixIcon: Icon(Icons.alternate_email)),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Please Enter Password";
                          }
                          if (!RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(value)) {
                            return "Please Enter a valid Email";
                          }
                          return null;
                        },
                        controller: _email,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: TextFormField(
                        obscureText: true,
                        decoration: const InputDecoration(
                            label: Text("Password"),
                            enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                    color: Color(0xfffd9921), width: 2)),
                            focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                              color: Color(0xfffd9921),
                              width: 2,
                            )),
                            suffixIcon: Icon(Icons.lock)),
                        controller: _password,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Please Enter Password";
                          }
                          return null;
                        },
                      ),
                    ),
                    TextButton(
                        onPressed: () {
                          print("Forget Password");
                        },
                        child: Text(
                          "Forget Password?",
                          style: Theme.of(context)
                              .textTheme
                              .titleMedium
                              ?.copyWith(color: Colors.grey, fontSize: 20),
                        )),
                    const SizedBox(
                      height: 20,
                    ),
                    GestureDetector(
                      onTap: () {
                        print("Login Button");
                      },
                      child: Container(
                        width: 250,
                        height: 70,
                        decoration: BoxDecoration(
                          color: const Color(0xfffd9921),
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: Center(
                            child: Text(
                          "Login",
                          style: Theme.of(context).textTheme.titleLarge,
                        )),
                      ),
                    ),
                    SizedBox(height: 20,),
                    IconButton(
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>const Screen5()));
                        },
                        icon: const Icon(Icons.arrow_forward_rounded))
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
