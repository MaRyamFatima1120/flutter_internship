import 'package:flutter/material.dart';

class WhatsappChannel extends StatefulWidget {
  const WhatsappChannel({super.key});

  @override
  State<WhatsappChannel> createState() => _WhatsappChannelState();
}

class _WhatsappChannelState extends State<WhatsappChannel> {
  List<String> name = [
    "Ayesha",
    "Ahmed",
    "Fatima",
    "Ali",
    "Sana",
    "Usman",
    "Hira",
    "Hamza",
    "Zainab",
    "Bilal",
  ];
  List<String> images = [
    "assets/images/person1.jpg",
    "assets/images/person3.png",
    "assets/images/person2.jpg",
    "assets/images/person4.jpg",
    "assets/images/person5.jpg",
    "assets/images/person6.jpg",
    "assets/images/person7.jpg",
    "assets/images/person8.jpg",
    "assets/images/person9.jpg",
    "assets/images/person10.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.teal,
        titleSpacing: 2.0,
        centerTitle: true,
        title: const Text(
          "Whatsapp Channel1",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const WhatsappChannel()));
              }, //Anonymous Function
              icon: const Icon(Icons.arrow_forward_ios_sharp),
            ),
          ),
        ],
        iconTheme: const IconThemeData(
          color: Colors.white,
        ),
      ),
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.all(20.0),
            child: Text(
              "Find Channel",
              style: TextStyle(
                color: Colors.white,
                fontSize: 30,
              ),
            ),
          ),
          SizedBox(
            height: 220,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 10,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    width: 170,
                    height: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      color: const Color(0xFF161616),
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 20.0, bottom: 10.0),
                          child: CircleAvatar(
                              radius: 40,
                              backgroundImage: AssetImage(images[index])),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            name[index],
                            style: const TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 16),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            print("Follow");
                          },
                          child: Container(
                            height: 30,
                            width: 100,
                            decoration: BoxDecoration(
                                color: const Color(0xFF0e5147),
                                borderRadius: BorderRadius.circular(20.0)),
                            child: const Center(
                              child: Text(
                                "Follow",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                );
              },
            ),
          )
        ],
      ),
    ));
  }
}
