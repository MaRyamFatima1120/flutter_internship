import 'package:flutter/material.dart';

class StatusScreen extends StatefulWidget {
  const StatusScreen({super.key});

  @override
  State<StatusScreen> createState() => _StatusScreenState();
}

class _StatusScreenState extends State<StatusScreen> {
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

  List<String> image = [
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
  List<String> subtitle = [

    "Hello,I'm Ayesha.",
    "Hello,I'm Ahmed.",
    "Hello,I'm Fatima.",
    "Hello,I'm Ali.",
    "Hello,I'm Sana.",
    "Hello,I'm Usman.",
    "Hello,I'm Hira.",
    "Hello,I'm Hamza.",
    "Hello,I'm Zainab.",
    "Hello,I'm Bilal.",
    "Hello,I'm Ayesha.",
    "Hello,I'm Ahmed.",
    "Hello,I'm Fatima.",
    "Hello,I'm Ali.",
    "Hello,I'm Sana.",
    "Hello,I'm Usman.",
    "Hello,I'm Hira.",
    "Hello,I'm Hamza.",
    "Hello,I'm Zainab.",
    "Hello,I'm Bilal.",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(


      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          Container(
            margin: const EdgeInsets.only(top:15.0,bottom: 10.0),
            child: ListTile(
            onTap: (){},
                  leading:const CircleAvatar(
                    radius: 30,
                    //backgroundColor: Colors.blue,
                    backgroundImage: AssetImage("assets/images/1.png"),
            
                  ),
            
                  title: Text("My Status", style: Theme
            .of(context)
            .textTheme
            .titleMedium
            ?.copyWith(
                    color: const Color(0xffa6aeb5),

            fontWeight: FontWeight.w500
                  ),),
                  subtitle: Text("Tap to add status update", style: Theme
            .of(context)
            .textTheme
            .titleMedium
            ?.copyWith(color:const Color(0xff7e868a),
            fontSize: 16,
            fontWeight: FontWeight.w400,

                  ),),
            
                ),
          ),
    Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Text("Recent updates",style:  Theme
          .of(context)
          .textTheme
          .titleMedium
          ?.copyWith(
      color: const Color(0xffa6aeb5),

      fontWeight: FontWeight.w500
      ),),
    ),
    Expanded(
      child: ListView.builder(

          itemCount: 20,
          itemBuilder: (context, index) {
            return ListTile(
              onTap: () {},
              leading: CircleAvatar(
                radius: 30,

                //backgroundColor: Colors.blue,
                backgroundImage: AssetImage(image[index]),

              ),
              title: Text(name[index], style: Theme
                  .of(context)
                  .textTheme
                  .titleLarge
                  ?.copyWith(
                  fontWeight: FontWeight.w500,
                 color: const Color(0xffa6aeb5),
              ),),
              subtitle: Text(subtitle[index], style: Theme
                  .of(context)
                  .textTheme
                  .titleMedium
                  ?.copyWith(color:const Color(0xff7e868a),
                  fontSize: 16,
                  fontWeight: FontWeight.w400
              ),),
              
            );
          }
      ),
    )
    ,
    ],
    ),
    floatingActionButton: FloatingActionButton(onPressed: (){},

    shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(50),
    ),
    backgroundColor:const Color(0xff00ac97),
    child: const Icon(Icons.
    chat
    )
    ,
    )
    ,
    );
  }
}
