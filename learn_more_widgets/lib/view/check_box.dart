import 'package:flutter/material.dart';
import 'package:learn_more_widgets/view/radio_button.dart';

class CheckBox1 extends StatefulWidget {
  const CheckBox1({super.key});

  @override
  State<CheckBox1> createState() => _CheckBox1State();
}

class _CheckBox1State extends State<CheckBox1> {
  bool isChecked = false;
  bool isCheck = false;
  bool check = false;
  bool checkBox = false;
  bool checkBox1 = false;
  bool checkBox2 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text(
          "CheckBox",
          style: TextStyle(color: Colors.white),
        ),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const RadioButton1()));
              },
              icon: const Icon(Icons.arrow_forward_rounded)),
        ],
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.all(10.0),
            child: Text(
              "Choose Your Skill",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.w500),
            ),
          ),
          Row(
            children: [
              Checkbox(
                  value: isChecked,
                  activeColor: Colors.black,
                  focusColor: Colors.black,
                  onChanged: (bool? value) {
                    setState(() {
                      isChecked = value!;
                    });
                  }),
              const Text(
                "Flutter",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                ),
              ),
            ],
          ),
          Row(
            children: [
              Checkbox(
                  value: isCheck,
                  activeColor: Colors.black,
                  focusColor: Colors.black,
                  onChanged: (bool? value) {
                    setState(() {
                      isCheck = value!;
                    });
                  }),
              const Text(
                "Dart",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                ),
              ),
            ],
          ),
          Row(
            children: [
              Checkbox(
                  value: check,
                  activeColor: Colors.black,
                  focusColor: Colors.black,
                  onChanged: (bool? value) {
                    setState(() {
                      check = value!;
                    });
                  }),
              const Text(
                "Kotlin",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                ),
              ),
            ],
          ),

          CheckboxListTile(
              /*  checkboxShape: RoundedRectangleBorder(
             borderRadius: BorderRadius.circular(5.0)
           ),*/

              title: const Text(
                "Flutter",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
              subtitle: const Text(
                "Flutter is a framework which creates multiple applications from Single Code Base",
                style: TextStyle(color: Colors.black, fontSize: 12),
              ),
              activeColor: Colors.green,
              side: WidgetStateBorderSide.resolveWith(
                (states) => const BorderSide(color: Colors.green),
              ),
              value: checkBox,
              onChanged: (bool? value) {
                setState(() {
                  checkBox = value!;
                });
              }),
          CheckboxListTile(
            /*  checkboxShape: RoundedRectangleBorder(
             borderRadius: BorderRadius.circular(5.0)
           ),*/


              title: const Text(
                "Dart",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
              subtitle: const Text(
                "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
                style: TextStyle(color: Colors.black, fontSize: 12),
              ),
              activeColor: Colors.green,
              side: WidgetStateBorderSide.resolveWith(
                    (states) => const BorderSide(color: Colors.green),
              ),
              value: checkBox1,
              onChanged: (bool? value) {
                setState(() {
                  checkBox1 = value!;
                });
              }),
          CheckboxListTile(
            /*  checkboxShape: RoundedRectangleBorder(
             borderRadius: BorderRadius.circular(5.0)
           ),*/


              title: const Text(
                "Kotlin",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
              subtitle: const Text(
                "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
                style: TextStyle(color: Colors.black, fontSize: 12),
              ),
              activeColor: Colors.green,
              side: WidgetStateBorderSide.resolveWith(
                    (states) => const BorderSide(color: Colors.green),
              ),
              value: checkBox2,
              onChanged: (bool? value) {
                setState(() {
                  checkBox2 = value!;
                });
              }),
        ],
      ),
    );
  }
}
