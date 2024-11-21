
import 'package:flutter/material.dart';

class CallsView extends StatefulWidget {
  const CallsView({super.key});

  @override
  State<CallsView> createState() => _CallsViewState();
}

class _CallsViewState extends State<CallsView> {
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
          subtitle: const Text("23 minutes ago"),
          trailing: const Icon(Icons.phone_enabled),
        );
      },
    );
  }
}

