
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class GetSnack1 extends StatefulWidget {
  const GetSnack1({super.key});

  @override
  State<GetSnack1> createState() => _GetSnack1State();
}

class _GetSnack1State extends State<GetSnack1> {
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
                Get.snackbar(
                  "This is Title",
                  "This is a Snack Message",
                );
              },
                child: const Text("Show Snackbar"),
            ),

            const SizedBox(height: 20,),


            TextButton(
              onPressed: (){
                Get.snackbar(
                  "",
                  "",
                  titleText: Text("Delete Chat"),
                  messageText: Text("are you sure you want to delete this chat!"),

                  colorText: Colors.white,
                  backgroundColor: Colors.lightBlueAccent,
                  snackPosition: SnackPosition.TOP,

                  borderRadius: 5,

                  margin: const EdgeInsets.all(10.0),
                  padding: const EdgeInsets.all(20.0),

                  maxWidth: 300,
                  // animationDuration: const Duration(seconds: 3),

                  backgroundGradient: const LinearGradient(colors: [
                    Colors.lightBlueAccent,
                    Colors.blueAccent,
                  ]),
                  borderColor: Colors.black,
                  borderWidth: 2,

                  boxShadows: [
                    BoxShadow(
                      color: Colors.blue.withOpacity(0.4),
                      offset: const Offset(4.0, 4.0),
                      spreadRadius: 5.0,
                      blurRadius: 5.0,
                    ),
                  ],

                  isDismissible: true,
                  dismissDirection: DismissDirection.horizontal,
                  // forwardAnimationCurve: Curves.bounceInOut,
                  // duration: const Duration(seconds: 3),

                  icon: const Icon(
                    Icons.send,
                    color: Colors.white,
                  ),
                  shouldIconPulse: false,

                  // leftBarIndicatorColor: Colors.red,

                  mainButton: TextButton(
                    onPressed: (){},
                    child: const Text("Reply", style: TextStyle(color: Colors.white),),
                  ),

                  onTap: (value){
                    print("Snackbar Clicked!");
                  },

                  overlayBlur: 5,
                  // overlayColor: Colors.white.withOpacity(0.4),

                  showProgressIndicator: true,
                  progressIndicatorBackgroundColor: Colors.white,
                  // progressIndicatorValueColor:
                  // const AlwaysStoppedAnimation(Colors.red),
                  // reverseAnimationCurve: Curves.bounceInOut,

                  snackbarStatus: (value){
                    print(value);
                  },

                  userInputForm: const Form(
                    child: Row(
                      children: [
                        Expanded(
                          child: TextField(),
                        ),
                      ],
                    ),
                  ),


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






