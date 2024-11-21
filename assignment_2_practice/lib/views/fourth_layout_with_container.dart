import 'package:flutter/material.dart';

import 'fifth_layout_with_container.dart';

class FourthScreen extends StatefulWidget {
  const FourthScreen({super.key});

  @override
  State<FourthScreen> createState() => _FourthScreenState();
}

class _FourthScreenState extends State<FourthScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          ContainerBox(
            color: const Color(0xFF1da02f),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const SmallContainer(
                  child: Icon(
                    Icons.apple,
                    color: Colors.white,
                    size: 50,
                  ),
                ),
                const SmallContainer(
                  child: Icon(
                    Icons.battery_5_bar,
                    color: Colors.green,
                    size: 50,
                  ),
                ),
                SmallContainer(
                    child: Image.asset(
                      "assets/images/download.jpg",
                      fit: BoxFit.cover,
                    )),
                const SmallContainer(
                  child: Center(
                      child: Text(
                    "D",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  )),
                ),
              ],
            ),
          ),
          const ContainerBox(
            color: Color(0xFFe12e4c),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SmallContainer(
                  child: Center(
                      child: Text(
                    "E",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  )),
                ),
                SmallContainer(
                  child: Center(
                      child: Text(
                    "F",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  )),
                ),
                SmallContainer(
                  child: Center(
                      child: Text(
                    "G",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  )),
                ),
                SmallContainer(
                  child: Center(
                      child: Text(
                    "H",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  )),
                ),
              ],
            ),
          ),
          const ContainerBox(
            color: Color(0xFF0d82f7),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SmallContainer(
                  child: Center(
                      child: Text(
                    "I",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  )),
                ),
                SmallContainer(
                  child: Center(
                      child: Text(
                    "J",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  )),
                ),
                SmallContainer(
                  child: Center(
                      child: Text(
                    "K",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  )),
                ),
                SmallContainer(
                  child: Center(
                      child: Text(
                    "L",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  )),
                ),
              ],
            ),
          ),
          const ContainerBox(
            color: Color(0xFFeb82eb),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SmallContainer(
                  child: Center(
                      child: Text(
                    "M",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  )),
                ),
                SmallContainer(
                  child: Center(
                      child: Text(
                    "N",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  )),
                ),
                SmallContainer(
                  child: Center(
                      child: Text(
                    "O",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  )),
                ),
                SmallContainer(
                  child: Center(
                      child: Text(
                    "P",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  )),
                ),
              ],
            ),
          ),
          const ContainerBox(
            color: Color(0xFF06cbf6),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SmallContainer(
                  child: Center(
                      child: Text(
                    "Q",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  )),
                ),
                SmallContainer(
                  child: Center(
                      child: Icon(
                    Icons.settings,
                    color: Colors.white,
                    size: 50,
                  )),
                ),
                SmallContainer(
                  child: Center(
                      child: Text(
                    "S",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  )),
                ),
                SmallContainer(
                  child: Center(
                      child: Text(
                    "T",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  )),
                ),
              ],
            ),
          ),
          const ContainerBox(
            color: Color(0xFFd3d56e),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SmallContainer(
                  child: Center(
                      child: Text(
                    "U",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  )),
                ),
                SmallContainer(
                  child: Center(
                      child: Text(
                    "V",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  )),
                ),
                SmallContainer(
                  child: Center(
                      child: Text(
                    "W",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  )),
                ),
                SmallContainer(
                  child: Center(
                      child: Text(
                    "X",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  )),
                ),
              ],
            ),
          ),
           ContainerBox(
            color: const Color(0xFFf19d5c),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const SmallContainer(
                  child: Center(
                      child: Text(
                    "Y",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  )),
                ),
                const SmallContainer(
                  child: Center(
                      child: Text(
                    "Z",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  )),
                ),
                SmallContainer(
                  child: Center(
                      child:IconButton(onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>FifthScreen()));
                      }, icon:const Icon(Icons.arrow_forward,size: 50,),)),
                ),
              ],
            ),
          ),
        ],
      ),
    ));
  }
}

class ContainerBox extends StatelessWidget {
  const ContainerBox({
    super.key,
    required this.color,
    this.child,
  });

  final Color color;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      width: double.infinity,
      height: 110,
      child: child,
    );
  }
}

class SmallContainer extends StatelessWidget {
  const SmallContainer({super.key, this.child, this.decoration});

  final Widget? child;
  final BoxDecoration? decoration;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: 80,
      color: const Color(0xFFf7b439),
      child: child,
    );
  }
}
