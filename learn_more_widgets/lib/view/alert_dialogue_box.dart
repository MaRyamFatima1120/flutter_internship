import 'package:flutter/material.dart';
import 'package:learn_more_widgets/view/check_box.dart';
import 'package:quickalert/models/quickalert_type.dart';
import 'package:quickalert/widgets/quickalert_dialog.dart';


class AlertDialogueBox1 extends StatefulWidget {
  const AlertDialogueBox1({super.key});

  @override
  State<AlertDialogueBox1> createState() => _AlertDialogueBox1State();
}

class _AlertDialogueBox1State extends State<AlertDialogueBox1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff004438),
        title: const Text(
          "Alert DialogueBox",
          style: TextStyle(color: Colors.white),
        ),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const CheckBox1()));
              },
              icon: const Icon(Icons.arrow_forward_rounded)),
        ],
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: ElevatedButton(
              onPressed: () {
                showDialog(
                    context:context ,
                    builder: (BuildContext context){
                     return AlertDialog(
                       title: const Text("Sample Alert Dialogue"),
                       content: const Text('AlertDialog description'),
                       actions: [
                         TextButton(onPressed:()=>Navigator.pop(context,'OK'),
                         child: const Text("OK",style: TextStyle(
                           color: Colors.green
                         ),),
                         )
                       ],
                     );
                    });
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xff004438),
                foregroundColor: Colors.white,
                elevation: 3,
                shadowColor: Colors.grey,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0)),
                minimumSize: const Size(200, 50),
              ),
              child:const Text(
                "Show Box",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.w800),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {
                showDialog(
                    context:context ,
                    builder: (BuildContext context){
                      return AlertDialog(
                        title: const Text("Sample Alert Dialogue"),
                        content: const Text('AlertDialog description'),
                        actions: [
                          TextButton(onPressed:()=>Navigator.pop(context,'OK'),
                            child:const Text("OK",style: TextStyle(
                                color: Colors.green
                            ),),
                          ),
                          TextButton(onPressed:()=>Navigator.pop(context,'OK'),
                            child: const Text("Cancel",style: TextStyle(
                                color: Colors.red
                            ),),
                          )
                        ],
                      );
                    });
              },
              style: ElevatedButton.styleFrom(
                backgroundColor:  const Color(0xff008B8B),
                foregroundColor: Colors.white,
                elevation: 3,
                shadowColor: Colors.grey,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0)),
                minimumSize: const Size(200, 50),
              ),
              child:const Text(
                "Show Box",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.w800),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {
                QuickAlert.show(
                    context: context, type: QuickAlertType.success,
                    text:'Transaction Completed Successfully!',
                  autoCloseDuration: const Duration(seconds: 2),
                  showConfirmBtn: true,

                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor:  const Color(0xff008B8B),
                foregroundColor: Colors.white,
                elevation: 3,
                shadowColor: Colors.grey,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0)),
                minimumSize: const Size(200, 50),
              ),
              child:const Text(
                "Show Box",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.w800),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
