import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SnackBarWithGet extends StatefulWidget {
  const SnackBarWithGet({super.key});

  @override
  State<SnackBarWithGet> createState() => _SnackBarWithGetState();
}

class _SnackBarWithGetState extends State<SnackBarWithGet> {
  // Create a TextEditingController to manage the text input
  final TextEditingController _textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: const Color(
            0xff377e6b,
          ),
          title: Text(
            "SnackBar",
            style:
                Theme.of(context).textTheme.titleMedium?.copyWith(fontSize: 24),
          ),
          centerTitle: true,
          actions: [
           IconButton(onPressed: (){
              Navigator.pushNamed(context, '/second');
           }, icon:const Icon(Icons.arrow_forward_ios,color: Colors.white,
           size:40,
           ))
          ],
        ),
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 40.0, vertical: 10.0),
                  child: ElevatedButton(
                    onPressed: () {
                      Get.snackbar(
                        "GetSnackBar",
                        "This is my first get SnackBar.",
                      );
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xff377e6b),
                        foregroundColor: Colors.white,
                        minimumSize: const Size(double.infinity, 60)),
                    child: const Text(
                      "Show SnackBar",
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 40.0, vertical: 10.0),
                  child: ElevatedButton(
                    onPressed: () {
                      Get.snackbar(
                        "", "",
                        titleText: Text(
                          "Explore",
                          style: Theme.of(context).textTheme.titleMedium,
                        ),
                        messageText: Text(
                          "Learn more Snackbar",
                          style: Theme.of(context).textTheme.titleSmall,
                        ),
                        snackPosition: SnackPosition.BOTTOM,
                        backgroundColor: const Color(0xff377e6b),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 40.0, vertical: 10.0),
                        margin: const EdgeInsets.all(10.0),
                        //maxWidth:300,
                      );
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xff377e6b),
                        foregroundColor: Colors.white,
                        minimumSize: const Size(double.infinity, 60)),
                    child: const Text(
                      "Explore SnackBar Widget",
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 40.0, vertical: 10.0),
                  child: ElevatedButton(
                    onPressed: () {
                      Get.snackbar("", "",
                          titleText: Text(
                            "Explore",
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                          messageText: Text(
                            "Learn Gradinet in  GetSnackbar ",
                            style: Theme.of(context).textTheme.titleSmall,
                          ),
                          snackPosition: SnackPosition.TOP,
                          backgroundGradient: const LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              colors: [
                                Color(0xff49a586),
                                Color(0xff377e6b),
                              ]),
                          borderRadius: 10.0,
                          isDismissible: true,
                          dismissDirection: DismissDirection.horizontal);
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xff377e6b),
                        foregroundColor: Colors.white,
                        minimumSize: const Size(double.infinity, 60)),
                    child: const Text(
                      "Explore With Gradient!!",
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 40.0, vertical: 10.0),
                  child: ElevatedButton(
                    onPressed: () {
                      Get.snackbar("", "",
                          titleText: Text(
                            "Explore",
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                          messageText: Text(
                            "Learn BoxShadow in  GetSnackbar ",
                            style: Theme.of(context).textTheme.titleSmall,
                          ),
                          margin: const EdgeInsets.symmetric(
                              horizontal: 20.0, vertical: 10.0),
                          snackPosition: SnackPosition.BOTTOM,
                          borderColor: Colors.white,
                          borderWidth: 1,
                          barBlur: 2,
                          boxShadows: [
                            const BoxShadow(
                                color: Color(0xff377e6b),
                                blurRadius: 5,
                                spreadRadius: 2.0,
                                offset: Offset(2, 2))
                          ],
                          dismissDirection: DismissDirection.startToEnd);
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xff377e6b),
                        foregroundColor: Colors.white,
                        minimumSize: const Size(double.infinity, 60)),
                    child: const Text(
                      "Explore With BoxShadow!!",
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 40.0, vertical: 10.0),
                  child: ElevatedButton(
                    onPressed: () {
                      Get.snackbar(
                        "Icon",
                        "Learn Icon with GetSnack",
                        snackPosition: SnackPosition.TOP,
                        barBlur: 4,
                        icon: const Icon(Icons.send),
                        shouldIconPulse: true,
                        leftBarIndicatorColor: Colors.white,
                      );
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xff377e6b),
                        foregroundColor: Colors.white,
                        minimumSize: const Size(double.infinity, 60)),
                    child: const Text(
                      " Learn With Icon",
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 40.0, vertical: 10.0),
                  child: ElevatedButton(
                    onPressed: () {
                      Get.snackbar(
                        "",
                        "",
                        titleText: Text(
                          "Main Button For Reply",
                          style: Theme.of(context).textTheme.titleMedium,
                        ),
                        messageText: Text(
                          "Learn Main Button For Reply with GetSnack",
                          style: Theme.of(context).textTheme.titleSmall,
                        ),
                        snackPosition: SnackPosition.TOP,
                        barBlur: 4,
                        boxShadows: [
                          const BoxShadow(
                              color: Color(0xff377e6b),
                              blurRadius: 5,
                              spreadRadius: 2.0,
                              offset: Offset(2, 2))
                        ],
                        dismissDirection: DismissDirection.startToEnd,
                        mainButton: TextButton(
                          onPressed: () {},
                          child: Text(
                            "Reply ",
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                        ),
                        onTap: (value) {
                          print("SnakcBar Click");
                        },
                        overlayBlur: 2,
                        overlayColor: Colors.black.withOpacity(0.2),
                        showProgressIndicator: true,
                        progressIndicatorBackgroundColor: Colors.white,
                        //progressIndicatorValueColor:AlwaysStoppedAnimation(Colors.white),
                        //reverseAnimationCurve: Curves.bounceOut,
                        reverseAnimationCurve: Curves.fastOutSlowIn,
                        snackbarStatus: (value) {
                          print(value);
                        },
                      );
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xff377e6b),
                        foregroundColor: Colors.white,
                        minimumSize: const Size(double.infinity, 60)),
                    child: const Text(
                      " Reply Button",
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ),

                //Form
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 40.0, vertical: 10.0),
                  child: ElevatedButton(
                    onPressed: () {
                      Get.snackbar("", "",
                          titleText: Text(
                            "Main Button For Reply",
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                          messageText: Text(
                            "Learn Main Button For Reply with GetSnack",
                            style: Theme.of(context).textTheme.titleSmall,
                          ),
                          snackPosition: SnackPosition.TOP,
                          barBlur: 4,
                          boxShadows: [
                            const BoxShadow(
                                color: Color(0xff377e6b),
                                blurRadius: 5,
                                spreadRadius: 2.0,
                                offset: Offset(2, 2))
                          ],
                          //  isDismissible: false,
                          //  dismissDirection: DismissDirection.startToEnd,
                          mainButton: TextButton(
                            onPressed: () {},
                            child: Text(
                              "Reply ",
                              style: Theme.of(context).textTheme.titleMedium,
                            ),
                          ),
                          // animationDuration: const Duration(minutes: 1),
                          //Form
                          userInputForm: const Form(
                            child: Row(
                              children: [
                                Expanded(
                                    child: TextField(
                                  decoration: InputDecoration(
                                    focusedBorder: InputBorder.none,
                                    enabledBorder: InputBorder.none,
                                  ),
                                  cursorColor: Colors.white,
                                ))
                              ],
                            ),
                          ));
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xff377e6b),
                        foregroundColor: Colors.white,
                        minimumSize: const Size(double.infinity, 60)),
                    child: const Text(
                      " Form ",
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 40.0, vertical: 10.0),
                  child: ElevatedButton(
                    onPressed: () {
                      Get.snackbar(
                        "",
                        "",
                        titleText: Text(
                          "Main Button For Reply",
                          style: Theme.of(context).textTheme.titleMedium,
                        ),
                        messageText: Text(
                          "Write your reply below and send",
                          style: Theme.of(context).textTheme.titleSmall,
                        ),
                        snackPosition: SnackPosition.TOP,
                        barBlur: 4,
                        boxShadows: [
                          const BoxShadow(
                            color: Color(0xff377e6b),
                            blurRadius: 5,
                            spreadRadius: 2.0,
                            offset: Offset(2, 2),
                          ),
                        ],
                        isDismissible: false,
                        // Prevent auto-dismiss
                        dismissDirection: DismissDirection.none,
                        // Disable swipe to dismiss
                        duration: null,
                        // Keeps the Snackbar open until manually dismissed
                        // MainButton with icon and text
                        mainButton: TextButton(
                          onPressed: () {
                            if (_textController.text.isNotEmpty) {
                              // Handle the send action (e.g., send the text)
                              print("Text Sent: ${_textController.text}");

                              // Clear the text field after sending
                              _textController.clear();

                              // Dismiss the Snackbar after the text is sent
                              Get.back(); // This dismisses the Snackbar
                            } else {
                              // Show an error if the text is empty
                              Get.snackbar(
                                "Error",
                                "Please enter a reply before sending.",
                                snackPosition: SnackPosition.TOP,
                              );
                            }
                          },
                          child: Row(
                            children: [
                              const Icon(Icons.send, color: Colors.white),
                              // Send Icon
                              const SizedBox(width: 4),
                              // Space between icon and text
                              Text(
                                "Send",
                                style: Theme.of(context)
                                    .textTheme
                                    .titleMedium
                                    ?.copyWith(color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                        // Text input inside the Snackbar
                        userInputForm: Form(
                          child: Row(
                            children: [
                              Expanded(
                                child: TextField(
                                  controller: _textController,
                                  // Bind the controller
                                  decoration: const InputDecoration(
                                    hintText: "Enter your reply",
                                    focusedBorder: InputBorder.none,
                                    enabledBorder: InputBorder.none,
                                  ),
                                  cursorColor: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xff377e6b),
                      foregroundColor: Colors.white,
                      minimumSize: const Size(double.infinity, 60),
                    ),
                    child: const Text(
                      "Form",
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
