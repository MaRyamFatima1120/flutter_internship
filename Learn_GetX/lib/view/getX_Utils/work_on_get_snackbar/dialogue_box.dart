import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DialogueBoxScreen extends StatefulWidget {
  const DialogueBoxScreen({super.key});

  @override
  State<DialogueBoxScreen> createState() => _DialogueBoxScreenState();
}

class _DialogueBoxScreenState extends State<DialogueBoxScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Text("DefaultDialogue",style: Theme.of(context).textTheme.titleMedium),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.blueAccent,
                  foregroundColor: Colors.white,
                    minimumSize: const Size(300, 60),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0)
                    )
                  ),
                    onPressed: (){


                    }, child:Text("Click Me!!"))

          ],
        ),
      ),

    );
  }
}
