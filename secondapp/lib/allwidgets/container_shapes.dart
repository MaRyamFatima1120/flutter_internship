
import 'package:flutter/material.dart';

class ContainerShapes extends StatefulWidget {
  const ContainerShapes({super.key});

  @override
  State<ContainerShapes> createState() => _ContainerShapesState();
}

class _ContainerShapesState extends State<ContainerShapes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [

          //   Button

            GestureDetector(
              onTap: (){
                print("Button taped!");
              },
              child: Container(
                height: 40.0,
                width: 220.0,
                decoration: BoxDecoration(
                  color: Colors.teal,
                  borderRadius: BorderRadius.circular(15.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.7),
                      spreadRadius: 3.0,
                      blurRadius: 5.0,
                      offset: const Offset(2.0, 2.0)
                    )
                  ],
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.shopping_bag, color: Colors.white,),
                    SizedBox(width: 10.0,),
                    Text("Buy Now", style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.5,
                    ),),
                  ],
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}


