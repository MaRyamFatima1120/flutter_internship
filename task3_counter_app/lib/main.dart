import 'package:flutter/material.dart';

void main() {
  runApp(const HomeScreen());
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int count = 0;
  int count1 = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child:Scaffold(
          appBar: AppBar(
            backgroundColor: const Color(0xFF7556f0),
            centerTitle: true,
            title: const Text("Counter App",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                )),
            leading: const Icon(
              Icons.menu_outlined,
              color: Colors.white,
            ),
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              //Task1
              const SizedBox(
                height: 10,
              ),
              const Center(
                child: Text("Task1",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                    )),
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                width: 250,
                height: 100,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Ink(
                            decoration: const ShapeDecoration(
                              color: Colors.deepPurpleAccent,
                              shape: CircleBorder(),
                            ),
                            child: IconButton(
                              onPressed: () {
                                setState(() {
                                  if (count == 0) {
                                    count = 0;
                                  } else {
                                    count--;
                                  }
                                });
                              },
                              icon: const Icon(
                                Icons.remove,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Text("$count",
                              style: const TextStyle(
                                fontSize: 20,
                              )),
                          Ink(
                            decoration: const ShapeDecoration(
                              color: Colors.deepPurpleAccent,
                              shape: CircleBorder(),
                            ),
                            child: IconButton(
                              onPressed: () {
                                setState(() {
                                  count++;
                                });
                              },
                              icon: const Icon(
                                Icons.add,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
        
              // Task2
        
              const SizedBox(
                height: 10,
              ),
              const Center(
                child: Text("Task2",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                    )),
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                width: 250,
                height: 100,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Ink(
                            decoration: const ShapeDecoration(
                              color: Colors.deepPurpleAccent,
                              shape: CircleBorder(),
                            ),
                            child: IconButton(
                              onPressed: () {
                                setState(() {
                                  count1--;
                                });
                              },
                              icon: const Icon(
                                Icons.remove,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Text("$count1",
                              style: const TextStyle(
                                fontSize: 20,
                              )),
                          Ink(
                            decoration: const ShapeDecoration(
                              color: Colors.deepPurpleAccent,
                              shape: CircleBorder(),
                            ),
                            child: IconButton(
                              onPressed: () {
                                setState(() {
                                  count1++;
                                });
                              },
                              icon: const Icon(
                                Icons.add,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
