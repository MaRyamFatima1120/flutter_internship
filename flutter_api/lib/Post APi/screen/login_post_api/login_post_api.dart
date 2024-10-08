import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class LoginPostApi extends StatefulWidget {
  const LoginPostApi({super.key});

  @override
  State<LoginPostApi> createState() => _LoginPostApiState();
}

class _LoginPostApiState extends State<LoginPostApi> {
  final apiUrl = "https://reqres.in/api/login";
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  Future<void> loginApi() async {
    var response = await http.post(Uri.parse(apiUrl),
        headers: {"Content-Type": "application/json"},
        body: jsonEncode({
          "email": _emailController.text,
          "password": _passwordController.text
        }));

    if (response.statusCode == 200) {
      print("Response status: ${response.statusCode}");
      print("Response body: ${response.body}");

      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          backgroundColor: Colors.redAccent,
          content: Text("Login Post Created Successfully!")));
    } else {
      print("Response status: ${response.statusCode}");
      print("Response body: ${response.body}");
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          backgroundColor: Colors.redAccent,
          content: Text("Failed to Login Post Send!")));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: const Text(
          "Login Post Api",
          style: TextStyle(
              fontSize: 20, color: Colors.white, fontWeight: FontWeight.w700),
        ),
        // centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.arrow_forward_ios,
                color: Colors.white,
              ))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
                controller: _emailController,
                decoration: const InputDecoration(
                    hintText: "Enter your email",
                    hintStyle: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    ),
                    focusedErrorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        borderSide: BorderSide(color: Colors.redAccent)))),
            const SizedBox(
              height: 40,
            ),
            TextField(
                controller: _passwordController,
                decoration: const InputDecoration(
                    hintText: "Password",
                    hintStyle: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    ),
                    focusedErrorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        borderSide: BorderSide(color: Colors.redAccent)))),
            const SizedBox(
              height: 50,
            ),
            ElevatedButton(
              onPressed: loginApi,
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.deepPurple,
                  minimumSize: const Size(double.infinity, 80)),
              child: const Text(
                "Create Post",
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
