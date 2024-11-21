import 'package:flutter/material.dart';
import 'package:learn_more_widgets/view/check_box.dart';


class SwitchWidget extends StatefulWidget {
  const SwitchWidget({super.key});

  @override
  State<SwitchWidget> createState() => _SwitchWidgetState();
}

class _SwitchWidgetState extends State<SwitchWidget> {

  bool isSwitched = false;
  var textValue = "Switch is OFF";

  void toggle(bool value) {
    if (isSwitched == false) {
      setState(() {
        isSwitched = true;
        textValue = "Switch is on";
      });
      print("Switch is on");
    }
    else {
      setState(() {
        isSwitched = false;
        textValue = " Switch is Off";
      });
      print("Switch is Off");
    }
  }

  bool lightOn = true;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text("Switch", style: TextStyle(
            color: Colors.white
        ),),
        actions: [
          IconButton(onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const CheckBox1()));
          }, icon: const Icon(Icons.arrow_forward_rounded)),

        ],
        iconTheme: const IconThemeData(
            color: Colors.white
        ),
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          /*  Transform.scale(
              scale: 2.0,
              child: Switch(value: lightOn,
                onChanged: (value){
                lightOn =value;
                },
                activeColor: Colors.black54,
                activeTrackColor: Colors.grey,
              ),
            ),*/
            const SizedBox(
              height: 30,
            ),
            const SwitchExample1(),
            const SizedBox(
              height: 30,
            ),
            const SwitchExample2(),
            const SizedBox(
              height: 30,
            ),
            Transform.scale(
              scale: 2.0,
              child: Switch(value: isSwitched,
                onChanged: toggle,
                activeColor: Colors.black54,
                activeTrackColor: Colors.black,
                thumbIcon: WidgetStateProperty.resolveWith<Icon?>((Set<WidgetState> states){
                  if(states.contains(WidgetState.selected)){
                    return const Icon(Icons.light_mode,color: Colors.white,);

                  }
                  return const Icon(Icons.dark_mode,color: Colors.black,);
                })


              ),
            )
          ],
        ),
      ),
    );
  }
}

class SwitchExample1 extends StatefulWidget {
  const SwitchExample1({super.key});

  @override
  State<SwitchExample1> createState() => _SwitchExample1State();
}

class _SwitchExample1State extends State<SwitchExample1> {
  bool isLight = true;

  @override
  Widget build(BuildContext context) {
    return Transform.scale(
      scale: 2.0,
      child: Switch(
          value: isLight,
          activeColor: Colors.red,
          onChanged: (bool value) {
            setState(() {
              isLight = value;
            });
          }

          )
      ,
    );
  }
}


class SwitchExample2 extends StatefulWidget {
  const SwitchExample2({super.key});

  @override
  State<SwitchExample2> createState() => _SwitchExample2State();
}

class _SwitchExample2State extends State<SwitchExample2> {

  bool isLight = true;

  
  @override
  Widget build(BuildContext context) {
    return Transform.scale(
      scale: 2.0,
      child: Switch(
        onChanged: (bool value) {
          setState(() {
            isLight =value;
          });
        }, value: isLight,
        
        thumbIcon:WidgetStateProperty.resolveWith<Icon?>(
            (Set<WidgetState> states){
              if(states.contains(WidgetState.selected)){
                return const Icon(Icons.check);
              }
              return const Icon(Icons.close);

            }
        ) ,

        
      ),
    );
  }
}


  
  
