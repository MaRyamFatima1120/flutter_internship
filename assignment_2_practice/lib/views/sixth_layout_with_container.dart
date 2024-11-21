import 'package:assignment_2_practice/views/learn_images.dart';
import 'package:flutter/material.dart';

class SixthScreen extends StatefulWidget {
  const SixthScreen({super.key});

  @override
  State<SixthScreen> createState() => _SixthScreenState();
}

class _SixthScreenState extends State<SixthScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Row(
                children: [
                  Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Text(
                      "Shop Easy",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 28),
                    ),
                  ),
                ],
              ),
              Container(
                width: 350,
                height: 200,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    gradient: const LinearGradient(
                      colors: [
                        Color(0xFFb136c6),
                        Color(0xFFd039e9),
                      ],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    )),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const CircleAvatar(
                          backgroundColor: Colors.white,
                          radius: 30,
                          child: Icon(
                            Icons.person,
                            size: 50,
                            color: Colors.grey,
                          ),
                        ),
                        const Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "Joan Mzuri",
                              style: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            Text(
                              "A Kenyan Shopper",
                              style:
                                  TextStyle(fontSize: 15, color: Colors.white),
                            ),
                          ],
                        ),
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.edit,
                              color: Colors.white,
                            ))
                      ],
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            Text(
                              "829",
                              style: TextStyle(color: Colors.white),
                            ),
                            Text(
                              "Whislist",
                              style: TextStyle(color: Colors.white),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              "51",
                              style: TextStyle(color: Colors.white),
                            ),
                            Text(
                              "Views",
                              style: TextStyle(color: Colors.white),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              "291",
                              style: TextStyle(color: Colors.white),
                            ),
                            Text(
                              "Orders",
                              style: TextStyle(color: Colors.white),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              "4",
                              style: TextStyle(color: Colors.white),
                            ),
                            Text(
                              "Coupons",
                              style: TextStyle(color: Colors.white),
                            )
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 50.0),
                    child: Container(
                      height: 50,
                      width: 50,
                      decoration: const BoxDecoration(
                          color: Color(0xFF8c7be4), shape: BoxShape.circle),
                      child: const Icon(
                        Icons.my_location,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Location",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 18),
                        ),
                        Text(
                          "Vikings Stage in Wescon,\nMombasa",
                          style: TextStyle(color: Colors.black87, fontSize: 8),
                        ),
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 80.0),
                    child: Icon(Icons.arrow_forward_ios_sharp),
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 50.0),
                    child: Container(
                      height: 50,
                      width: 50,
                      decoration: const BoxDecoration(
                          color: Colors.pinkAccent, shape: BoxShape.circle),
                      child: const Icon(
                        Icons.call,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Phone",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 18),
                        ),
                        Text(
                          "No phone. Tap to change",
                          style: TextStyle(color: Colors.black87, fontSize: 8),
                        ),
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 80.0),
                    child: Icon(Icons.arrow_forward_ios_sharp),
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 50.0),
                    child: Container(
                      height: 50,
                      width: 50,
                      decoration: const BoxDecoration(
                          color: Colors.amberAccent, shape: BoxShape.circle),
                      child: const Icon(
                        Icons.settings,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "General Settings",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 18),
                        ),
                        Text(
                          "out log or theme,Change",
                          style: TextStyle(color: Colors.black87, fontSize: 8),
                        ),
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 40.0),
                    child: Icon(Icons.arrow_forward_ios_sharp),
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 50.0),
                    child: Container(
                      height: 50,
                      width: 50,
                      decoration: const BoxDecoration(
                          color: Color(0xFF8c7be4), shape: BoxShape.circle),
                      child: const Icon(
                        Icons.my_location,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Location",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 18),
                        ),
                        Text(
                          "Vikings Stage in Wescon,\nMombasa",
                          style: TextStyle(color: Colors.black87, fontSize: 8),
                        ),
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 80.0),
                    child: Icon(Icons.arrow_forward_ios_sharp),
                  ),
                ],
              ),
              IconButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>LearnImages()));
              }, icon: const Icon(Icons.arrow_forward)),
            ],
          ),
        ),
      ),
    );
  }
}
