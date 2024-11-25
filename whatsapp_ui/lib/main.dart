import 'package:flutter/material.dart';
import 'package:whatsapp_ui/screens/chats.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'WhatsApp Ui',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xff008069)),
        useMaterial3: true,
      ),
      home: const ChatsScreen(),
    );
  }
}

