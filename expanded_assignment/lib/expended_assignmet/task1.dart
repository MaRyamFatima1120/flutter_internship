import 'package:expanded_assignment/expended_assignmet/task2.dart';
import 'package:flutter/material.dart';

class Design1 extends StatefulWidget {
  const Design1({super.key});

  @override
  State<Design1> createState() => _Design1State();
}

class _Design1State extends State<Design1> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        elevation: 40.0,
        scrolledUnderElevation: 2,
        title:const Text("Rows and Column",style: TextStyle(
          color: Colors.white,
        ),),
        actions: [
          IconButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>Design2()));;
          }, icon:const Icon(Icons.arrow_forward),color: Colors.white,)
        ],

      ),
      body:Column(

        children: [
          Row(
            children: [
              Expanded(child: Container(
                height: 100,
                color: Colors.blue,
                child: const Center(child: Text("Container1",style: TextStyle(
                    color: Colors.white,fontSize: 16,fontWeight: FontWeight.w700
                ),)),
              )),
              Expanded(child: Container(
                height: 100,
                color: Colors.red,
                child: const Center(child: Text("Container2",style: TextStyle(
                    color: Colors.white,fontSize: 16,fontWeight: FontWeight.w700
                ),)),
              )),
              Expanded(child: Container(
                height: 100,
                color: Colors.blue,
                child: const Center(child: Text("Container1",style: TextStyle(
                    color: Colors.white,fontSize: 16,fontWeight: FontWeight.w700
                ),)),
              )),

            ],
          ),
          Expanded(child: Container(
            height: 100,
            color: Colors.deepPurple,
            child: Center(child: Text("Container1",style: TextStyle(
              color: Colors.white,fontSize: 24,fontWeight: FontWeight.w700
            ),)),
          )),
          Expanded(child: Container(
            height: 100,
            color: Colors.blue,
            child: const Center(child: Text("Container2",style: TextStyle(
                color: Colors.white,fontSize: 24,fontWeight: FontWeight.w700
            ),)),
          )),
          Expanded(child: Container(
            height: 100,
            color: Colors.deepPurple,
            child: const Center(child: Text("Container3",style: TextStyle(
                color: Colors.white,fontSize: 24,fontWeight: FontWeight.w700
            ),)),
          )),



        ],
      ),
    ));
  }
}
