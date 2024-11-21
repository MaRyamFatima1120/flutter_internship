import 'package:facebookapp/loading.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const FacebookApp());
}

class FacebookApp extends StatefulWidget {
  const FacebookApp({super.key});

  @override
  State<FacebookApp> createState() => _FacebookAppState();
}

class _FacebookAppState extends State<FacebookApp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Facebook App",
      home: LoadingScreen(),
    );
  }
}
