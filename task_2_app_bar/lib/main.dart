import 'package:flutter/material.dart';
//I am working here without Stateless Widget and StatefulWidget

void main() {
  runApp(MaterialApp(
    home: SafeArea(
      child: Scaffold(
        drawer: const Drawer(
 ),
        appBar: AppBar(

          backgroundColor: const Color(0xFF6200ee),
          elevation: 10,
          title: const Text(
            "Page Title",
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
          actions: [
            const Icon(
              Icons.favorite,
            ),
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.search,
                  color: Colors.white,
                )),
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.more_vert,
                ))
          ],
          iconTheme: const IconThemeData(
            color: Colors.white,
          ),

        ),
      ),
    ),
  ));
}
