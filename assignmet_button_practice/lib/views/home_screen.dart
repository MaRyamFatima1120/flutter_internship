import 'package:assignmet_button_practice/views/first_button.dart';
import 'package:assignmet_button_practice/views/second_button.dart';
import 'package:assignmet_button_practice/views/sixth_button.dart';
import 'package:assignmet_button_practice/views/sventh_button.dart';
import 'package:assignmet_button_practice/views/third_button.dart';
import 'package:flutter/material.dart';

import 'fifth_button.dart';
import 'fourth_button.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        centerTitle: true,
        title: const Text("Button Practice",style: TextStyle(
          color: Colors.white,
        ),),
      ),
      body: const SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FirstButton(),
            SizedBox(height: 20,),
            SecondButton(),
            SizedBox(height: 20,),
            GradientButton(),
            SizedBox(height: 20,),
            ElevatedButton1(),
            SizedBox(height: 20,),
            CircleShape1(),
            SizedBox(height: 20,),
            OutLinedButton(),
            SizedBox(height: 20,),
            CustomButton(),

          ],
        ),
      )

    ));
  }
}
