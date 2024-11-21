

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'student.dart';

class TextUtils extends StatefulWidget {
  const TextUtils({super.key});

  @override
  State<TextUtils> createState() => _TextUtilsState();
}

class _TextUtilsState extends State<TextUtils> {

  final student = Student();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrangeAccent,
        centerTitle: true,
        title: const Text("Screen 2", style: TextStyle(
            color: Colors.white
        ),),
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Display the name using Obx to reactively update it
            Obx(() => Text(
              'Name: ${student.name.value}',
              style: const TextStyle(fontSize: 24),
            )),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Convert the name to uppercase by updating the Student instance
                student.name.value = student.name.value.toUpperCase();
              },
              child: const Text('Convert to Uppercase'),
            ),
          ],
        ),
      ),
    );
  }
}



