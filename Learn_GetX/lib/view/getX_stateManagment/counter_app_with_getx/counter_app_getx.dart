import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learn_getx/view/getX_stateManagment/counter_app_with_getx/counter_controller.dart';
import 'package:learn_getx/view/getX_stateManagment/learn_about_opacityWithslider/slider.dart';

class CounterAppGetX extends StatefulWidget {
  const CounterAppGetX({super.key});

  @override
  State<CounterAppGetX> createState() => _CounterAppGetXState();
}

class _CounterAppGetXState extends State<CounterAppGetX> {
  final CounterController controller =Get.put(
    CounterController()
  );

  @override
  Widget build(BuildContext context) {
    print("Rebuild");
    return Scaffold(
        appBar: AppBar(


          backgroundColor: Colors.blue,
          title: const Text(
            "Increment APP with GetX",
          ),
          actions: [
            IconButton(
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context )=>const SliderApp(

                )));
              },
              icon: const Icon(Icons.arrow_forward_ios),
            )
          ],

        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
                child: Obx(()=>Text("${controller.counter}", style: const TextStyle(fontSize: 50))))
          ],
        ),
        floatingActionButton: FloatingActionButton(
            backgroundColor: Colors.blue,
            onPressed: () {
              controller.incrementFunction();

            },
          child:Icon(Icons.add)
            ));
  }
}
