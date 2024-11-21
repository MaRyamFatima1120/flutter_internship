import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DialogueBox1 extends StatefulWidget {
  const DialogueBox1({super.key});

  @override
  State<DialogueBox1> createState() => _DialogueBox1State();
}

class _DialogueBox1State extends State<DialogueBox1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: const Color(0xff7368f3),
        title: const Text(
          "Dialogue Box",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xfffec00b),
                minimumSize: const Size(150, 50),
                elevation: 5.0,
              ),
              onPressed: () {
                Get.defaultDialog(
                    radius: 20,
                    title: "You Win!",
                    titleStyle: const TextStyle(
                        color: Color(0xfffec00b),
                        fontWeight: FontWeight.bold,
                        fontSize: 24),
                    content: Column(
                      children: [
                        Image.asset("assets/images/1.png",width: 100,height: 100,),
                        const SizedBox(height: 10,),
                        const Text(
                          "This is a alert Diagloue Box",
                          style: TextStyle(
                              color: Color(0xffc2c0be),

                              fontSize: 16),
                        ),
                        const SizedBox(height: 10,),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xfffec00b),
                            minimumSize: const Size(150, 50),
                            elevation: 5.0,
                          ),
                          onPressed: () {
                            Get.back();
                          },
                          child: const Text(
                            "OK!",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 24),
                          ),
                        ),
                      ],
                    ));
              },
              child: const Text(
                "Win",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 24),
              ),
            ),
          ),
          const SizedBox(
            width: 10.0,
          ),
          Center(
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xffd2443e),
                minimumSize: const Size(150, 50),
                elevation: 5.0,
              ),
              onPressed: () {
                Get.defaultDialog(
                    radius: 20,
                    title: "You Lose!",
                    titleStyle: const TextStyle(
                        color: Color(0xffd2443e),
                        fontWeight: FontWeight.bold,
                        fontSize: 24),
                    content: Column(
                      children: [
                        const CircleAvatar(
                            radius: 40,
                            backgroundColor: Color(0xffd2443e),
                            child: Icon(Icons.close,color: Colors.white,size: 40,)),
                        const SizedBox(height: 10,),
                        const Text(
                          "This is a alert Diagloue Box",
                          style: TextStyle(
                              color: Color(0xffc2c0be),

                              fontSize: 16),
                        ),
                        const SizedBox(height: 10,),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xffd2443e),
                            minimumSize: const Size(150, 50),
                            elevation: 5.0,
                          ),
                          onPressed: () {
                            Get.back();
                          },
                          child: const Text(
                            "OK!",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 24),
                          ),
                        ),
                      ],
                    ));
              },
              child: const Text(
                "Lose",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 24),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
