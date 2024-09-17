import 'package:flutter/material.dart';
import 'package:stack_widget_assignment/view/screen4.dart';

class Screen3 extends StatefulWidget {
  const Screen3({super.key});

  @override
  State<Screen3> createState() => _Screen3State();
}

class _Screen3State extends State<Screen3> {
  @override
  Widget build(BuildContext context) {
    var sizeWidth = MediaQuery.of(context).size.width;
    var sizeHeight = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xff8e93b3),
        body: Column(
          children: [
            Stack(
              children: [
                Container(
                  width: sizeWidth,
                  height: sizeHeight * 0.9,
                  decoration: const BoxDecoration(
                      color: Color(0xff140327),
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(100.0))),
                  child: Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("FRIDAY 6:00 PM",style: Theme.of(context).textTheme.titleMedium?.copyWith(
                            color: Colors.white30
                        ),),
                        Text("Adobe XD Live Event in Europe",style: Theme.of(context).textTheme.titleLarge,),
                        const SizedBox(height: 5,),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              const SizedBox(
                                width: 70,
                                height: 40,
                                child: Stack(
                                  children: [
                                    CircleAvatar(
                                      radius: 20,
                                      child: CircleAvatar(
                                        radius: 18,
                                        backgroundImage: AssetImage("assets/images/1.jpg"),
                                      ),
                                    ),
                                    Positioned(
                                      left: 25,
                                      child: CircleAvatar(
                                        radius: 20,
                                        child: CircleAvatar(
                                          radius: 18,
                                          backgroundImage: AssetImage("assets/images/2.jpg"),
                                        ),
                                      ),
                                    ),

                                  ],),
                              ),
                              Text("join Marie, John & 10 others",style: Theme.of(context).textTheme.titleMedium?.copyWith(
                                  color: Colors.white30
                              ),)
                            ],),
                        )
                      ],),
                  ),
                ),
                Container(
                  width: sizeWidth,
                  height: sizeHeight * 0.65,
                  decoration: const BoxDecoration(
                      color: Color(0xff8541b0),
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(100.0))),
                  child: Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("TUESDAY 5:30 PM",style: Theme.of(context).textTheme.titleMedium?.copyWith(
                            color: Colors.white30
                        ),),
                        Text("Practice French, English\nAnd Chinese",style: Theme.of(context).textTheme.titleLarge,),
                        const SizedBox(height: 5,),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              const SizedBox(
                                width: 70,
                                height: 40,
                                child: Stack(
                                  children: [
                                    CircleAvatar(
                                      radius: 20,
                                      child: CircleAvatar(
                                        radius: 18,
                                        backgroundImage: AssetImage("assets/images/1.jpg"),
                                      ),
                                    ),
                                    Positioned(
                                      left: 25,
                                      child: CircleAvatar(
                                        radius: 20,
                                        child: CircleAvatar(
                                          radius: 18,
                                          backgroundImage: AssetImage("assets/images/2.jpg"),
                                        ),
                                      ),
                                    ),

                                  ],),
                              ),
                              Text("join Ryan, Bob & 12 others",style: Theme.of(context).textTheme.titleMedium?.copyWith(
                                  color: Colors.white30
                              ),)
                            ],),
                        )
                      ],),
                  ),
                ),
                Container(
                  width: sizeWidth,
                  height: sizeHeight * 0.42,
                  decoration: const BoxDecoration(
                      color: Color(0xffd96f9f),
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(100.0))),
                  child: Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("TODAY 5:30 PM",style: Theme.of(context).textTheme.titleMedium?.copyWith(
                          color: Colors.white30
                        ),),
                      Text("Yoga and Meditation \nfor Beginners",style: Theme.of(context).textTheme.titleLarge,),
                        const SizedBox(height: 5,),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              const SizedBox(
                                width: 70,
                                height: 40,
                                child: Stack(
                                  children: [
                                  CircleAvatar(
                                    radius: 20,
                                    child: CircleAvatar(
                                      radius: 18,
                                      backgroundImage: AssetImage("assets/images/1.jpg"),
                                    ),
                                  ),
                                  Positioned(
                                    left: 25,
                                    child: CircleAvatar(
                                      radius: 20,
                                      child: CircleAvatar(
                                        radius: 18,
                                        backgroundImage: AssetImage("assets/images/2.jpg"),
                                      ),
                                    ),
                                  ),

                                ],),
                              ),
                            Text("join Marie, John & 10 others",style: Theme.of(context).textTheme.titleMedium?.copyWith(
                              color: Colors.white30
                          ),)
                          ],),
                        )
                    ],),
                  ),
                ),
                Container(
                  width: sizeWidth,
                  height: sizeHeight * 0.2,
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(100.0))),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Stack(
                            alignment: Alignment.topRight,
                            children: [
                              const CircleAvatar(
                                radius: 30,
                                backgroundImage: AssetImage(
                                  "assets/images/1.jpg",
                                ),
                              ),
                              CircleAvatar(
                                radius: 10,
                                backgroundColor: const Color(0xff9097ab),
                                child: Text(
                                  "12",
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleMedium
                                      ?.copyWith(
                                          color: Colors.white, fontSize: 8),
                                ),
                              ),
                            ],
                          ),
                          Text(
                            "You",
                            style: Theme.of(context).textTheme.titleMedium,
                          )
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const CircleAvatar(
                            radius: 30,
                            backgroundColor: Color(0xffbb829a),
                            child: CircleAvatar(
                              radius: 28,
                              backgroundColor: Colors.white,
                              child: Icon(
                                Icons.moving,
                                color: Colors.black,
                                size: 30,
                              ),
                            ),
                          ),
                          Text(
                            "Trending",
                            style: Theme.of(context)
                                .textTheme
                                .titleMedium
                                ?.copyWith(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                      Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Icon(Icons.favorite_border_outlined),
                            const SizedBox(
                              height: 30,
                            ),
                            Text(
                              "Health",
                              style: Theme.of(context).textTheme.titleMedium,
                            )
                          ])
                    ],
                  ),
                ),

              ],
            )
          ],
        ),
        floatingActionButton: FloatingActionButton(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50)
          ),
          onPressed: (){
            Navigator.push(context,MaterialPageRoute(builder: (context)=>const Screen4()));
          },

          child: const Icon(Icons.navigate_next_sharp,color: Colors.black,),
        ),
      ),

    );

  }
}
