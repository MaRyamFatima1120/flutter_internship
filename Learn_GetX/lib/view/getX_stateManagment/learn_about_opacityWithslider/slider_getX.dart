import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learn_getx/view/getX_stateManagment/3_learn_more_about_getX/example3.dart';
import 'package:learn_getx/view/getX_stateManagment/learn_about_opacityWithslider/slider_controller.dart';


class SliderAppWithGetx extends StatefulWidget {
  const SliderAppWithGetx({super.key});

  @override
  State<SliderAppWithGetx> createState() => _SliderAppWithGetxState();
}

class _SliderAppWithGetxState extends State<SliderAppWithGetx> {

  SliderController controller =Get.put(SliderController());

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    print("Rebuild");
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.blue,
          title:const Text("Slider with GetX",style: TextStyle(
            color: Colors.white,
          ),),
          actions: [
            IconButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>const Example3()));
            }, icon: const Icon(Icons.arrow_forward_ios,color: Colors.white,))
          ],
        ),
        body:Column(
          //   mainAxisAlignment: MainAxisAlignment.center,
            children:[

              Obx(()=>Container(
                width: double.infinity,
                height: 200,
                color: Colors.red.withOpacity(controller.opacity.value),
              ),),
              Obx(()=> Slider(
                value: controller.opacity.value,
                onChanged: (value){
                print(value);
                 controller.setOpacity(value);
                },

              ))

            ]
        )
    );
  }
}
