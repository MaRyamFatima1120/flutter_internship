
import 'package:flutter/material.dart';
import 'package:secondapp/Card/mycard.dart';
import 'package:secondapp/allwidgets/listwidget.dart';
import 'package:secondapp/allwidgets/myListTile.dart';
import 'allwidgets/container_widget.dart';
import 'list/design2.dart';
import 'list/list1.dart';


void main() {
  runApp(const HomeApp());
}

class HomeApp extends StatefulWidget {
  const HomeApp({super.key});

  @override
  State<HomeApp> createState() => _HomeAppState();
}

class _HomeAppState extends State<HomeApp> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyCard(),
    );
  }
}
