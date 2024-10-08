import 'dart:math';

import 'package:clipboard/clipboard.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UiColorGeneratorApp extends StatefulWidget {
  const UiColorGeneratorApp({super.key});

  @override
  State<UiColorGeneratorApp> createState() => _UiColorGeneratorAppState();
}

class _UiColorGeneratorAppState extends State<UiColorGeneratorApp> {
  RxInt red = 0.obs;
  RxInt green = 0.obs;
  RxInt blue = 0.obs;
  RxDouble opacity = 0.0.obs;
  RxString rgb = "".obs;

  //gradient
  RxString gradientColor1 = "".obs;
  RxString gradientColor2 = "".obs;
  Color color1 = Colors.blue;
  Color color2 = Colors.deepPurpleAccent;

  //scaffold field
  RxInt redOne = 0.obs;
  RxInt greenTwo = 0.obs;
  RxInt blueThree = 0.obs;
  RxString rgb1 = "".obs;
  Random random = Random();

  void changeColor() {
    //Generate random Number
    red.value = random.nextInt(256);
    green.value = random.nextInt(256);
    blue.value = random.nextInt(256);
    //generate random opacity color
    opacity.value = random.nextDouble();
    rgb.value = "RGB(${red.value},${green.value},${blue.value})";
  }

  void gradientColor() {
    color1 = Color.fromRGBO(
        //Generate random Number
        random.nextInt(256),
        random.nextInt(256),
        random.nextInt(256),
        1);
    gradientColor1.value = "RGB(${color1.red},${color1.green},${color1.blue})";
    color2 = Color.fromRGBO(
        //Generate random Number
        random.nextInt(256),
        random.nextInt(256),
        random.nextInt(256),
        1);
    gradientColor2.value = "RGB(${color2.red},${color2.green},${color2.blue})";
  }

  void scaffoldColor() {
    //Generate random Number
    redOne.value = random.nextInt(256);
    greenTwo.value = random.nextInt(256);
    blueThree.value = random.nextInt(256);
    //generate random opacity color
    rgb1.value = "RGB(${redOne.value},${greenTwo.value},${blueThree.value})";
    //update Ui
  }

  void copyForMethod() {
    FlutterClipboard.copy(rgb.value).then((value) {
      print('copied');
      Get.snackbar("Copied", "RGB Color:${rgb.value},",
          snackPosition: SnackPosition.BOTTOM,
          colorText: Colors.white,
          backgroundColor: Colors.black,
        margin:const EdgeInsets.all(10),
      );

    });
  }

  void copyForScaffold() {
    FlutterClipboard.copy(rgb1.value).then((value) {
      print('copied');
      Get.snackbar("Scaffold Copied", "RGB Color:${rgb1.value},",
          snackPosition: SnackPosition.BOTTOM,
          colorText: Colors.white,
          backgroundColor: Colors.black);
    });
  }

  void copyForGradient() {
    String gradientValues ="Color1:${gradientColor1.value},\nColor2:${gradientColor2.value}";
    FlutterClipboard.copy(gradientValues).then((value) {
      print('copied');
      Get.snackbar("Gradient Color Copied", "${gradientValues},",
        snackPosition: SnackPosition.BOTTOM,
        colorText: Colors.white,
        backgroundColor: Colors.black,
        margin:const EdgeInsets.all(10),
      );

    });
  }
  @override
  Widget build(BuildContext context) {
    print("Rebuild");
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Color Palette",
          style: Theme.of(context).textTheme.titleMedium,
        ),
      ),
      body: Obx(() => Container(
            width: double.infinity,
            height: double.infinity,
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
            color: Color.fromRGBO(
                redOne.value, greenTwo.value, blueThree.value, 1),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          rgb1.value,
                          style: Theme.of(context)
                              .textTheme
                              .titleMedium
                              ?.copyWith(color: Colors.white),
                        )),
                    GestureDetector(
                        onTap: () {
                          copyForScaffold();
                        },
                        child: const Icon(
                          Icons.copy,
                          color: Colors.white,
                          size: 40,
                        )),

                  ],
                ),
             Expanded(
                  child: GestureDetector(
                    onTap: () {
                      changeColor();
                    },
                    child: Obx(() => Container(
                          margin: const EdgeInsets.symmetric(
                              horizontal: 40.0, vertical: 40.0),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20.0, vertical: 20),
                          color: Color.fromRGBO(
                              red.value, green.value, blue.value, 1),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Align(
                                  alignment: Alignment.topLeft,
                                  child: Text(
                                    rgb.value,
                                    style: Theme.of(context)
                                        .textTheme
                                        .titleMedium
                                        ?.copyWith(color: Colors.white),
                                  )),
                              const SizedBox(
                                height: 20,
                              ),
                              GestureDetector(
                                  onTap: () {
                                    copyForMethod();
                                  },
                                  child: const Icon(
                                    Icons.copy,
                                    color: Colors.white,
                                    size: 40,
                                  )),
                              const SizedBox(
                                height: 40,
                              ),
                            ],
                          ),
                        )),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                      onTap: () {
                        gradientColor();
                      },
                      child: Obx(
                        () => Container(
                          margin: const EdgeInsets.symmetric(
                              horizontal: 40.0, vertical: 40.0),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20.0, vertical: 20),
                          decoration: BoxDecoration(
                              gradient: LinearGradient(
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight,
                                  colors: [color1, color2],
                                  tileMode: TileMode.mirror)),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Align(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  gradientColor1.value,
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleMedium
                                      ?.copyWith(color: Colors.white),
                                ),
                              ),
                              Center(
                                child: GestureDetector(
                                    onTap: () {
                                      copyForGradient();
                                    },
                                    child: const Icon(
                                      Icons.copy,
                                      color: Colors.white,
                                      size: 40,
                                    )),
                              ),
                              Align(
                                alignment: Alignment.bottomRight,
                                child: Text(
                                  gradientColor2.value,
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleMedium
                                      ?.copyWith(color: Colors.white),
                                ),
                              ),
                            ],
                          ),
                        ),
                      )),
                ),
              ],
            ),
          )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          scaffoldColor();
        },
        shape: const CircleBorder(side: BorderSide(color: Colors.white10)),
        child: const Icon(Icons.palette),
      ),
    );
  }
}
