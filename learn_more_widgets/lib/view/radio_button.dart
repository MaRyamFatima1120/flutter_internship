import 'package:flutter/material.dart';
import 'package:learn_more_widgets/view/alert_dialogue_box.dart';

class RadioButton1 extends StatefulWidget {
  const RadioButton1({super.key});

  @override
  State<RadioButton1> createState() => _RadioButton1State();
}

class _RadioButton1State extends State<RadioButton1> {
  int? _groupValue =-1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text(
          "RadioButton",
          style: TextStyle(color: Colors.white),
        ),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const AlertDialogueBox1()));
              },
              icon: const Icon(Icons.arrow_forward_rounded)),
        ],
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,

        children: [
          const Text("Choose Gender",style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20
          ),),
          Row(

            children: [
              Expanded(
                child: RadioListTile(
                  title: const Text("Male"),
                  activeColor: Colors.blue,

                  value: 0,
                  groupValue: _groupValue,
                  onChanged: (value)=> setState(() {
                    _groupValue = value;
                  }),
                ),
              ),
              Expanded(
                child: RadioListTile(
                  activeColor: Colors.red,
                  title: const Text("Female"),
                  value: 1,
                  groupValue: _groupValue,
                  onChanged: (value)=> setState(() {
                    _groupValue = value;
                  }),


                ),
              ),
            ],

          ),







        ],
      )
      
    );
  }
}
