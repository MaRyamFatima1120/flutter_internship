
import 'package:flutter/material.dart';

class ChatView extends StatefulWidget {
  const ChatView({super.key});

  @override
  State<ChatView> createState() => _ChatViewState();
}

class _ChatViewState extends State<ChatView> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 30,
      itemExtent: 80,
      itemBuilder: (context, index){
        return ListTile(
          onTap: (){},
          leading: CircleAvatar(
            backgroundColor: index % 2 == 0 ?  Colors.teal : Colors.blue,
            radius: 30,
          ),
          title: const Text("Muhammad Arslan"),
          subtitle: const Text("hello everyone!"),
          trailing: const Text("10:23am"),
        );
      },
    );
  }
}

