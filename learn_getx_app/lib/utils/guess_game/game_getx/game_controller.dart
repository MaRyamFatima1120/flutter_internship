

import 'dart:math';
import 'dart:ui';import 'package:flutter/material.dart';


import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class GameController extends GetxController{

  RxList<int> randomNumber = <int>[].obs;
   RxInt targetNumber =0.obs;
  RxInt attempts = 3.obs;

  generateRandomNumber() {
    // Create a list to hold random numbers for each box
    final List<int> numbers = List.generate(99, (index) => index + 1);
    //Shuffle the list
    numbers.shuffle(Random());
    randomNumber.value = numbers.sublist(0, 9);

    targetNumber.value = randomNumber[Random().nextInt(randomNumber.length)];
  }

 checkGuess(BuildContext context, int guessNumber) {
    //check if guess number is correct
    if (guessNumber == targetNumber.value) {
      attempts.value = 0;
      Get.dialog(
        BackdropFilter(
            filter: ImageFilter.blur(sigmaX:5.0,sigmaY: 5.0),
          child: Center(
            child:Container(
              width: 100.w,
              height: 40.h,
              margin:const EdgeInsets.symmetric(horizontal: 20),
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.9),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset("assets/images/1.png",width: 100.w,height: 20.h,fit: BoxFit.fitHeight),
                  Text( "Congratulations!\nYou guessed the correct number!",
                    textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(color: Colors.black,fontSize: 16.sp),

                  )
                ],
              ),

            )
          ),
        ));

    } else {
      attempts.value--;

      if (attempts.value == 0) {
        //Show game over dialog
        Get.defaultDialog(
            radius: 20,
            title: "Game Over!",
            titleStyle: const TextStyle(
                color: Color(0xffd2443e),
                fontWeight: FontWeight.bold,
                fontSize: 24),
            content: Column(
              children: [
                const CircleAvatar(
                    radius: 40,
                    backgroundColor: Color(0xffd2443e),
                    child: Icon(
                      Icons.close,
                      color: Colors.white,
                      size: 40,
                    )),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  "You have no attempts left. The correct number was ${targetNumber.value}",
                  style:
                  const TextStyle(color: Color(0xffc2c0be), fontSize: 16),
                ),
                const SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xffd2443e),
                    minimumSize: const Size(150, 50),
                    elevation: 5.0,
                  ),
                  onPressed: () {
                    resetGame();
                    Get.back();
                  },
                  child: const Text(
                    "Replay",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 24),
                  ),
                ),
              ],
            ));
      } else if (guessNumber < targetNumber.value) {
        Get.defaultDialog(
            title: "Your guess is too low! Try Again.",
            content: Text("You have ${attempts.value} attempts left."));
      } else {
        Get.defaultDialog(
            title: "Your guess is too High! Try Again.",
            content: Text("You have ${attempts.value} attempts left."));
      }
    }
  }

 resetGame() {
    generateRandomNumber();
    attempts.value = 3;

  }

}
