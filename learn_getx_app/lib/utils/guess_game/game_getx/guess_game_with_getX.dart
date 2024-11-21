import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learn_getx_app/utils/guess_game/game_getx/game_controller.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class GameGuess extends StatefulWidget {
  const GameGuess({super.key});

  @override
  State<GameGuess> createState() => _GameGuessState();
}

class _GameGuessState extends State<GameGuess> {
  final GameController gameController = Get.put(GameController());

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    gameController.generateRandomNumber();
  }

  @override
  Widget build(BuildContext context) {
    //   print(randomNumber);
    return Scaffold(
      // appBar: AppBar(
      //   // leading: Icon(Icons.menu),
      //   //automaticallyImplyLeading: false,
      //   title: Text(
      //     "Guess Number",
      //     style: Theme.of(context).textTheme.titleMedium,
      //   ),
      //   iconTheme: const IconThemeData(color: Colors.white),
      //   flexibleSpace: Container(
      //     decoration: const BoxDecoration(
      //         gradient: LinearGradient(
      //             begin: Alignment.topLeft,
      //             end: Alignment.topRight,
      //             colors: [
      //           Color(0xffc243ec),
      //           Color(0xff625cdd),
      //         ])),
      //   ),
      // ),
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
                    // Check if the current screen is already GameGuess
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
                    //  Get.to(const GameGuess());
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
        decoration: const BoxDecoration(
          //color: const Color(0xff4631a8),
          image: DecorationImage(
              image: AssetImage("assets/images/download.jpg"),
              fit: BoxFit.fitHeight,
              filterQuality: FilterQuality.high),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 2.h,
            ),
            Center(
                child: Text(
              "Guess the Random Number ",
              style: Theme.of(context)
                  .textTheme
                  .titleMedium
                  ?.copyWith(color: Colors.black, fontSize: 20.sp),
            )),
            SizedBox(
              height: 10.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Obx(
                  () => Box(
                    text: "${gameController.randomNumber[0]}",
                    onTap: () {
                      gameController.checkGuess(context,gameController.randomNumber[0]);
                    },
                  ),
                ),
                Obx(
                  () => Box(
                    text: "${gameController.randomNumber[1]}",
                    onTap: () {
                      gameController.checkGuess(context,gameController.randomNumber[1]);
                    },
                  ),
                ),
                Obx(
                  () => Box(
                    text: "${gameController.randomNumber[2]}",
                    onTap: () {
                      gameController.checkGuess(context,gameController.randomNumber[2]);
                    },
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 5.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Obx(
                  () => Box(
                    text: "${gameController.randomNumber[3]}",
                    onTap: () {
                      gameController.checkGuess(context,gameController.randomNumber[3]);
                    },
                  ),
                ),
                Obx(
                  () => Box(
                    text: "${gameController.randomNumber[4]}",
                    onTap: () {
                      gameController.checkGuess(context,gameController.randomNumber[4]);
                    },
                  ),
                ),
                Obx(
                  () => Box(
                    text: "${gameController.randomNumber[5]}",
                    onTap: () {
                      gameController.checkGuess(context,gameController.randomNumber[5]);
                    },
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 5.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Obx(
                  () => Box(
                    text: "${gameController.randomNumber[6]}",
                    onTap: () {
                      gameController.checkGuess(context,gameController.randomNumber[6]);
                    },
                  ),
                ),
                Obx(
                  () => Box(
                    text: "${gameController.randomNumber[7]}",
                    onTap: () {
                      gameController.checkGuess(context,gameController.randomNumber[7]);
                    },
                  ),
                ),
                Obx(
                  () => Box(
                    text: "${gameController.randomNumber[8]}",
                    onTap: () {
                      gameController.checkGuess(context,gameController.randomNumber[8]);
                    },
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 5.h,
            ),
          ],
        ),
      ),
    );
  }
}

class Box extends StatelessWidget {
  final String text;
  final void Function() onTap;

  const Box({
    super.key,
    required this.text,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,

      child: Container(
        width: 25.w,
        height: 10.h,
        decoration: const BoxDecoration(
          color:  Colors.white10,
          shape: BoxShape.circle

        ),
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

