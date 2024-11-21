import 'package:flutter/material.dart';
import 'package:learn_getx/view/getX_stateManagment/counter_app_with_getx/counter_app_getx.dart';
import 'package:learn_getx/view/getX_stateManagment/counter_app_with_getx/counter_app_without_getx.dart';

class CounterApp extends StatefulWidget {
  const CounterApp({super.key});

  @override
  State<CounterApp> createState() => _CounterAppState();
}

class _CounterAppState extends State<CounterApp> {
  int counter =20;
  @override
  Widget build(BuildContext context) {
      print("rebuild");
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title:const Text("Increment APP",),
          actions: [
            IconButton(
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context )=>const CounterAppGetX()));
              },
              icon: const Icon(Icons.arrow_forward_ios),
            )
          ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: Text("$counter",style: const TextStyle(
          fontSize: 50
      )))
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue,
        onPressed: (){
          counter++;
          print(counter);

          setState(() {

          });

        },
        child:const Icon(Icons.add,color: Colors.white,),
      ),
    );
  }
}
