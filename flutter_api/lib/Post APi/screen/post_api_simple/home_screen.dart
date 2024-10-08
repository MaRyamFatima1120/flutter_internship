import 'dart:convert';
import 'package:flutter_api/Post%20APi/screen/login_post_api/login_post_api.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';

class PostHomeScreen extends StatefulWidget {
  const PostHomeScreen({super.key});

  @override
  State<PostHomeScreen> createState() => _PostHomeScreenState();
}

class _PostHomeScreenState extends State<PostHomeScreen> {
  final apiUrl = "https://jsonplaceholder.typicode.com/posts";
  final titleController = TextEditingController();
  final bodyController = TextEditingController();

  Future<void> sendRequestApi() async {
    var response = await http.post(Uri.parse(apiUrl),
        headers: {
          "Content-Type": "application/json",
        },
        body: jsonEncode({
          "title": titleController.text,
          "body": bodyController.text,
          "userId": 1,
        }));
    if (response.statusCode == 201) {
      print("Response status: ${response.statusCode}");
      print("Response body: ${response.body}");
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          backgroundColor: Colors.redAccent,
          content: Text("Post Created Successfully!")));
    } else {
      print("Response status: ${response.statusCode}");
      print("Response body: ${response.body}");
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          backgroundColor: Colors.redAccent,
          content: Text("Failed to create post!")));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text(
          "Flutter Post Request",
          style: TextStyle(
              fontSize: 20, color: Colors.white, fontWeight: FontWeight.w700),
        ),
        // centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const LoginPostApi()));
              },
              icon: const Icon(
                Icons.arrow_forward_ios,
                color: Colors.white,
              ))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          children: <Widget>[
            TextField(
                controller: titleController,
                decoration: const InputDecoration(
                    hintText: "Title",
                    hintStyle: TextStyle(
                      fontSize: 16,
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
              height: 25,
            ),
            TextField(
                maxLines: 5,
                controller: bodyController,
                decoration: const InputDecoration(
                    hintText: "Body",
                    hintStyle: TextStyle(
                      fontSize: 16,
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
              height: 25,
            ),
            ElevatedButton(
              onPressed: sendRequestApi,
              child: const Text(
                "Create Post",
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  minimumSize: const Size(double.infinity, 80)),
            ),
          ],
        ),
      ),
    );
  }
}
