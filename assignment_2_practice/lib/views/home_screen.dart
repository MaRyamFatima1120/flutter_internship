import 'package:assignment_2_practice/views/second_layout_with_container.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xFF01e474),
          leading: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.menu,
              color: Colors.white,
            ),
          ),
          title: const Text(
            "GeeksforGeeks",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
        body: Container(
          width: double.infinity,

          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const SizedBox(
                    width: 15,
                  ),
                  Container(
                    width: 175,
                    height: 175,
                    decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(20.0)),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Container(
                    width: 175,
                    height: 175,
                    decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(20.0)),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                width: 375,
                height:175,

                decoration: BoxDecoration(
                  color:Color(0xFF2295f2),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),

              const SizedBox(
                height: 10,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.start,

                children: [
                  const SizedBox(width: 10,),
                  Container(
                    width: 175,
                    height: 250,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  const SizedBox(width: 20,),
                  Container(
                    width: 175,
                    height: 250,
                    decoration: BoxDecoration(
                        color: Colors.blue,
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ],
              ),
              IconButton(onPressed: (){
                Navigator.push(context,MaterialPageRoute(builder: (context)=>SecondScreen(

                )));
              }, icon: Icon(Icons.arrow_forward),),
            ],
          ),
        ),
      ),
    );
  }
}
