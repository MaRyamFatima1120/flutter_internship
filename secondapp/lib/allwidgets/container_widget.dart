
import 'package:flutter/material.dart';

class ContainerWidget extends StatefulWidget {
  const ContainerWidget({super.key});

  @override
  State<ContainerWidget> createState() => _ContainerWidgetState();
}

class _ContainerWidgetState extends State<ContainerWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 200,
              width: 200,

              decoration: BoxDecoration(
                color: Colors.blue,
                
                image: DecorationImage(
                    image: AssetImage("assets/images/person3.png"),
                  fit: BoxFit.fitHeight,
                ),
                
                // shape: BoxShape.circle,

              //   apply Border to Container

                border: Border.all(color: Colors.black, width: 5.0, style: BorderStyle.solid),

                // border: Border(
                //   top: BorderSide(color: Colors.black, width: 5.0),
                //   bottom: BorderSide(color: Colors.red, width: 5.0,),
                //   left: BorderSide(color: Colors.orange, width: 10.0),
                //   right: BorderSide(color: Colors.deepOrangeAccent, width: 7.0),
                // ),

              //   Border Radius

                // borderRadius: BorderRadius.circular(20.0),

                borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(60.0),
                  bottomLeft: Radius.circular(60.0),
                ),

              //   Box Shadow
               /* boxShadow: <BoxShadow>[
                  BoxShadow(
                    color: Colors.blueGrey.withOpacity(0.5),
                    spreadRadius: 5.0,
                    blurRadius: 5.0,
                  ),
                ],*/
                
              ),
            ),


            const SizedBox(height: 20.0,),

            const Text("Container Shape", style: TextStyle(
              fontSize: 24,
              fontFamily: "Playwrite",
            ),),

            const SizedBox(height: 20.0,),

            Image(
              image: AssetImage("assets/images/person1.png"),
              width: 300.0,
              alignment: Alignment.topRight,
              color: Colors.black.withOpacity(0.5),
              colorBlendMode: BlendMode.softLight,
              semanticLabel: "Business Person Photo",
            )
          ],
        ),
      ),
    );
  }
}





