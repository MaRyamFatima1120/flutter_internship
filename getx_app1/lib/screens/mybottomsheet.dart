




import 'package:flutter/material.dart';
import 'package:get/get.dart';


class Sheet1 extends StatefulWidget {
  const Sheet1({super.key});

  @override
  State<Sheet1> createState() => _Sheet1State();
}

class _Sheet1State extends State<Sheet1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.blueAccent,
      appBar: AppBar(
        backgroundColor: Colors.blue,
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [

            ElevatedButton(

              onPressed: (){
                Get.bottomSheet(
                  Container(

                    // height: 400,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(20.0),
                        topLeft: Radius.circular(20.0),
                      ),
                    ),

                    child: ListView(
                      children: [
                        ListTile(
                          onTap: (){},
                          title: Text("Home Page"),
                          leading: Icon(Icons.home),
                          trailing: Icon(Icons.arrow_forward),
                        ),
                      ],
                    ),

                  ),
                );
              },
              child: const Text("Show Snackbar"),
            ),

            const SizedBox(height: 20,),


            TextButton(
              onPressed: (){
                Get.defaultDialog(
                  title: "Delete Chat",
                  titleStyle: const TextStyle(fontSize: 25),
                  titlePadding: const EdgeInsets.all(10.0),

                  middleText: "Are you sure you want to delete this chat?",
                  middleTextStyle: const TextStyle(fontSize: 16),

                  backgroundColor: Colors.blue,
                  radius: 10.0,

                  //   To Customize the middle text there is another property called content
                  // content: const Row(
                  //   children: [
                  //     CircularProgressIndicator(),
                  //     SizedBox(width: 16.0,),
                  //     Expanded(
                  //       child: Text("Data Loading"),
                  //     ),
                  //   ],
                  // ),


                  // default cancel and confirm action
                  // textCancel: "Cancel",
                  // cancelTextColor: Colors.white,
                  // onCancel: (){},
                  //
                  // textConfirm: "Confirm",
                  // confirmTextColor: Colors.white,
                  // onConfirm: (){},

                  // Color for default cancel and confirm button
                  // buttonColor: Colors.red,


                  // Customize the default cancel and confirm
                  // Override the default cancel and confirm

                  // cancel: const Text("Cancel", style: TextStyle(color: Colors.white),),
                  // confirm: const Text("Confirm", style: TextStyle(color: Colors.white),),


                  actions: [
                    ElevatedButton(onPressed: (){ Get.back(); }, child: const Text("Action 1")),
                    ElevatedButton(onPressed: (){}, child: const Text("Action 2")),
                  ],

                  // If this property true then clicking outside the dialog box will close the dialog box
                  barrierDismissible: false,

                );
              },
              child: const Text("Click Me!"),
            )

          ],
        ),
      ),
    );
  }
}






