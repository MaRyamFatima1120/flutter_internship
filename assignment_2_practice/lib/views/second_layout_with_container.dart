import 'package:assignment_2_practice/views/third_layout_with_container.dart';
import 'package:flutter/material.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({super.key});

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xFF2196f3),
          title: const Text(
            "Rows and Column",
            style: TextStyle(color: Colors.white),
          ),
          elevation: 20,
          iconTheme: const IconThemeData(
            color: Colors.white,
          ),
          actions: [
            IconButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>ThirdScreen()));}, icon: Icon(Icons.forward))
          ],
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  width: 130,
                  height: 100,
                  color: const Color(0xFF2095f6),
                  child: const Center(
                      child: Text(
                    "Container1",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                        fontSize: 12),
                  )),
                ),
                Container(
                  width: 130,
                  height: 100,
                  decoration: BoxDecoration(color: Colors.red, boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 2.0,
                      blurRadius: 3.0,
                    ),
                  ]),
                  child: const Center(
                      child: Text(
                    "Container2",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                        fontSize: 12),
                  )),
                ),
                Container(
                  width: 130,
                  height: 100,
                  color: const Color(0xFF2095f6),
                  child: const Center(
                      child: Text(
                    "Container3",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                        fontSize: 12),
                  )),
                ),
              ],
            ),
            Container(
              width: double.infinity,
              height: 200,
              color: Color(0xFF4150b5),
              child: Center(
                  child: Text(
                "Container1",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                    fontSize: 20),
              )),
            ),
            Container(
              width: double.infinity,
              height: 200,
              color: Color(0xFF2196f3),
              child: Center(
                  child: Text(
                "Container2",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                    fontSize: 20),
              )),
            ),
            Container(
              width: double.infinity,
              height: 200,
              color: Color(0xFF4150b5),
              child: Center(
                  child: Text(
                "Container3",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                    fontSize: 20),
              )),
            ),
          ],
        ),
      ),
    );
  }
}
