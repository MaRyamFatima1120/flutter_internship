import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class GuessGame extends StatefulWidget {
  const GuessGame({super.key});

  @override
  State<GuessGame> createState() => _GuessGameState();
}

class _GuessGameState extends State<GuessGame> {
  List<int> randomNumber = [];
  late int targetNumber;
  var attempts = 2;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    generateRandomNumber();
  }

  void generateRandomNumber() {
    // Create a list to hold random numbers for each box
    final List<int> numbers = List.generate(99, (index) => index + 1);
    //Shuffle the list
    numbers.shuffle(Random());
    randomNumber = numbers.sublist(0, 9);

    targetNumber = randomNumber[Random().nextInt(randomNumber.length)];
  }

  void checkGuess(int guessNumber) {
    if (guessNumber == targetNumber) {
      attempts = 0;
      Get.defaultDialog(
          radius: 20,
          title: "You Win!",
          titleStyle: const TextStyle(
              color: Color(0xfffec00b),
              fontWeight: FontWeight.bold,
              fontSize: 24),
          content: Column(
            children: [
              Image.asset(
                "assets/images/1.png",
                width: 100,
                height: 100,
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                "Congratulations! You guessed the correct number: $targetNumber. You have $attempts attempts now.",
                style: const TextStyle(color: Color(0xffc2c0be), fontSize: 16),
              ),
              const SizedBox(
                height: 10,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xfffec00b),
                  minimumSize: const Size(150, 50),
                  elevation: 5.0,
                ),
                onPressed: () {
                  resetGame();
                  Get.back();
                },
                child: const Text(
                  "Reset Game!",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 24),
                ),
              ),
            ],
          ));
    } else {
      attempts--;

      if (attempts == 0) {
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
                  "You have no attempts left. The correct number was $targetNumber.",
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
      } else if (guessNumber < targetNumber) {
        Get.defaultDialog(
            title: "Your guess is too low! Try Again.",
            content: Text("You have $attempts attempts left."));
      } else {
        Get.defaultDialog(
            title: "Your guess is too High! Try Again.",
            content: Text("You have $attempts attempts left."));
      }
    }
  }

  void resetGame() {
    generateRandomNumber();
    attempts = 2;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    print(randomNumber);
    return Scaffold(
      appBar: AppBar(
        // leading: Icon(Icons.menu),
        //automaticallyImplyLeading: false,
        title: Text(
          "Guess Number",
          style: Theme.of(context).textTheme.titleMedium,
        ),
        iconTheme: const IconThemeData(color: Colors.white),
        flexibleSpace: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.topRight,
                  colors: [
                Color(0xffc243ec),
                Color(0xff625cdd),
              ])),
        ),
      ),
      drawer: Align(
        alignment: Alignment.topLeft,
        child: SizedBox(
          height: 50.h,
          width: 70.w,
          child: Drawer(
            backgroundColor: Colors.white,
            shape: const RoundedRectangleBorder(
                borderRadius:
                    BorderRadius.only(bottomRight: Radius.circular(60.0))),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: CircleAvatar(
                    radius: 25,
                    backgroundColor: const Color(0xff67e0b5),
                    child: IconButton(
                        onPressed: () {
                          Get.back();
                        },
                        icon: const Icon(
                          Icons.close,
                          size: 30,
                          color: Colors.white,
                        )),
                  ),
                ),
                SizedBox(
                  height: 2.h,
                ),
                ListTile(
                  onTap: () {
                    // Check if the current screen is already GuessGame
                  },
                  title: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30.0),
                        child: Text(
                          "Home",
                          style: Theme.of(context)
                              .textTheme
                              .titleMedium
                              ?.copyWith(
                                  color: const Color(0xff318e7f), fontSize: 24),
                        ),
                      ),
                      const Divider(
                        thickness: 2,
                        endIndent: 100,
                        indent: 10,
                      ),
                    ],
                  ),
                ),
                ListTile(
                  onTap: () {
                    //  Get.to(const GuessGame());
                  },
                  title: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30.0),
                        child: Text(
                          "Game Info",
                          style: Theme.of(context)
                              .textTheme
                              .titleMedium
                              ?.copyWith(
                                  color: const Color(0xff318e7f), fontSize: 24),
                        ),
                      ),
                      const Divider(
                        thickness: 2,
                        endIndent: 100,
                        indent: 10,
                      ),
                    ],
                  ),
                ),
                ListTile(
                  onTap: () {},
                  title: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30.0),
                        child: Text(
                          "Clear Score",
                          style: Theme.of(context)
                              .textTheme
                              .titleMedium
                              ?.copyWith(
                                  color: const Color(0xff318e7f), fontSize: 24),
                        ),
                      ),
                      const Divider(
                        thickness: 2,
                        endIndent: 100,
                        indent: 10,
                      ),
                    ],
                  ),
                ),
                ListTile(
                  onTap: () {},
                  title: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Github",
                          style: Theme.of(context)
                              .textTheme
                              .titleMedium
                              ?.copyWith(
                                  color: const Color(0xff318e7f), fontSize: 24),
                        ),
                        SizedBox(
                          width: 10.w,
                        ),
                        const Icon(
                          Icons.arrow_forward,
                          color: Color(0xff318e7f),
                          size: 30,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      body: Container(
        width: double.infinity,
        color: const Color(0xff4631a8),
        child: Column(
          children: [
            SizedBox(
              height: 2.h,
            ),
            Center(
                child: Text(
              "Guess the Random Number ",
              style: Theme.of(context).textTheme.titleMedium,
            )),
            SizedBox(
              height: 10.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Box(
                  text: "${randomNumber[0]}",
                  color: Colors.white,
                  onTap: () {
                    checkGuess(randomNumber[0]);
                  },
                ),
                Box(
                  text: "${randomNumber[1]}",
                  color: Colors.white,
                  onTap: () {
                    checkGuess(randomNumber[1]);
                  },
                ),
                Box(
                  text: "${randomNumber[2]}",
                  color: Colors.white,
                  onTap: () {
                    checkGuess(randomNumber[2]);
                  },
                )
              ],
            ),
            SizedBox(
              height: 5.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Box(
                  text: "${randomNumber[3]}",
                  color: Colors.white,
                  onTap: () {
                    checkGuess(randomNumber[3]);
                  },
                ),
                Box(
                  text: "${randomNumber[4]}",
                  color: Colors.white,
                  onTap: () {
                    checkGuess(randomNumber[4]);
                  },
                ),
                Box(
                  text: "${randomNumber[5]}",
                  color: Colors.white,
                  onTap: () {
                    checkGuess(randomNumber[5]);
                  },
                )
              ],
            ),
            SizedBox(
              height: 5.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Box(
                  text: "${randomNumber[6]}",
                  color: Colors.white,
                  onTap: () {
                    checkGuess(randomNumber[6]);
                  },
                ),
                Box(
                  text: "${randomNumber[7]}",
                  color: Colors.white,
                  onTap: () {
                    checkGuess(randomNumber[7]);
                  },
                ),
                Box(
                  text: "${randomNumber[8]}",
                  color: Colors.white,
                  onTap: () {
                    checkGuess(randomNumber[8]);
                  },
                )
              ],
            ),
            SizedBox(
              height: 5.h,
            ),
            // Row(
            //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //     children: [
            //       Box(
            //         text:"${randomNumber[9]}",
            //         color: Colors.white,
            //       ),
            //     ]),
          ],
        ),
      ),
    );
  }
}

class Box extends StatelessWidget {
  final Color color;
  final String text;
  final void Function() onTap;

  const Box(
      {super.key,
      required this.text,
      this.color = Colors.white,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: 25.w,
        height: 10.h,
        color: color,
        child: Center(
          child: Text(
            text,
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
                color: Colors.black, fontWeight: FontWeight.bold, fontSize: 24),
          ),
        ),
      ),
    );
  }
}
