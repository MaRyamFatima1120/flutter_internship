import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  List<String> name =[
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
      body: ListView.builder(

          itemCount: 20,
          itemBuilder: (context,index){
            return ListTile(


              onTap: (){},
              leading: CircleAvatar(
                radius: 30,
              
                //backgroundColor: Colors.blue,
                backgroundImage: AssetImage(image[index]),
              
              ),
              title:Text(name[index],style: Theme.of(context).textTheme.titleLarge?.copyWith(
                fontWeight: FontWeight.w500
              ),),
              subtitle: Text(subtitle[index],style: Theme.of(context).textTheme.titleMedium?.copyWith(color: const Color(0xffa6aeb5),
              fontSize: 16,
                fontWeight: FontWeight.w400
              ),),
              trailing: const Text("9:50pm"),
            );
          }
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){},

        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
        ),
        backgroundColor:const Color(0xff00ac97),
      child: const Icon(Icons.chat),
      ),

    );
  }
}
