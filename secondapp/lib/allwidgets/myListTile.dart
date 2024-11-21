

import 'package:flutter/material.dart';

class MyListView extends StatefulWidget {
  const MyListView({super.key});

  @override
  State<MyListView> createState() => _MyListViewState();
}

class _MyListViewState extends State<MyListView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurpleAccent,
        centerTitle: true,
        title: const Text("List Widgets", style: TextStyle(
          color: Colors.white,
        ),),
      ),

      body: ListView.builder(
        itemCount: 100,
        itemBuilder: (context, index){
          return Container(
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.2),
                  blurRadius: 4.0,
                  spreadRadius: 4.0,
                  offset: const Offset(2.0, 2.0),
                )
              ],
            ),
            child: ListTile(
              onTap: (){},
              tileColor: Colors.white,
              leading: CircleAvatar(
                radius: 30.0,
                backgroundColor: Colors.blueAccent,
                // backgroundImage: AssetImage("assets/images/person3.png"),
                child: Text("${index+1}", style: TextStyle(fontSize: 22,),),
              ),
              title: const Text("Muhammad Arslan"),
              subtitle: const Text("Flutter Developer"),
              trailing: const Icon(Icons.edit),
            ),
          );
        },
      ),
    );
  }
}
