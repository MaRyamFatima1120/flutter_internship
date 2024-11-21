import 'package:flutter/material.dart';
import 'package:learn_getx/view/getX_stateManagment/learn_about_opacityWithslider/slider_getX.dart';


class SliderApp extends StatefulWidget {
  const SliderApp({super.key});

  @override
  State<SliderApp> createState() => _SliderAppState();
}

class _SliderAppState extends State<SliderApp> {

  double opacity=0.2;

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
        title:const Text("Slider",style: TextStyle(
          color: Colors.white,
        ),),
        actions: [
          IconButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>const SliderAppWithGetx()));
          }, icon: const Icon(Icons.arrow_forward_ios,color: Colors.white,))
        ],
      ),
    body:Column(
   //   mainAxisAlignment: MainAxisAlignment.center,
      children:[

        Container(
          width: double.infinity,
          height: 200,
          color: Colors.red.withOpacity(opacity),
        ),
        Slider(
          value: opacity,
          onChanged: (value){
            print(value);
                opacity =value;
            setState(() {

            });
          },

        )
      ]
    )
    );
  }
}
