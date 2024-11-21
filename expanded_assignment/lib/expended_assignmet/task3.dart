import 'package:expanded_assignment/expended_assignmet/task4.dart';
import 'package:flutter/material.dart';

class Design3 extends StatefulWidget {
  const Design3({super.key});

  @override
  State<Design3> createState() => _Design3State();
}

class _Design3State extends State<Design3> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Expanded(
                child: Container(
              height: 200,
              color: const Color(0xFF1ea22f),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Box1(child: Icon(Icons.apple,color: Colors.white,size: 70,),),
                  const Box1(child: Icon(Icons.battery_5_bar,color: Colors.green,size: 70,),),
                  const Box1(
                    child:  Image(
                      image: NetworkImage(
                        "https://buffer.com/cdn-cgi/image/w=1000,fit=contain,q=90,f=auto/library/content/images/size/w600/2023/10/free-images.jpg",

                      ),
                      fit: BoxFit.cover,
                      color: Colors.black,
                      colorBlendMode: BlendMode.softLight,

                    ),
                  ),
                  Box1(
                    child: Center(
                      child: Text("D",
                          style: Theme.of(context).textTheme.titleMedium),
                    ),
                  ),
                ],
              ),
            )),
            Expanded(
                child: Container(
              height: 200,
              color: const Color(0xFFdc314d),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Box1(
                    child: Center(
                        child: Text("E",
                            style: Theme.of(context).textTheme.titleMedium)),
                  ),
                  Box1(
                    child: Center(
                        child: Text("F",
                            style: Theme.of(context).textTheme.titleMedium)),
                  ),
                  Box1(
                    child: Center(
                        child: Text("G",
                            style: Theme.of(context).textTheme.titleMedium)),
                  ),
                  Box1(
                    child: Center(
                        child: Text("H",
                            style: Theme.of(context).textTheme.titleMedium)),
                  ),
                ],
              ),
            )),
            Expanded(
                child: Container(
              height: 200,
              color: const Color(0xFF0566e9),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Box1(
                    child: Center(
                        child: Text("I",
                            style: Theme.of(context).textTheme.titleMedium)),
                  ),
                  Box1(
                    child: Center(
                        child: Text("J",
                            style: Theme.of(context).textTheme.titleMedium)),
                  ),
                  Box1(
                    child: Center(
                        child: Text("K",
                            style: Theme.of(context).textTheme.titleMedium)),
                  ),
                  Box1(
                    child: Center(
                        child: Text("L",
                            style: Theme.of(context).textTheme.titleMedium)),
                  ),
                ],
              ),
            )),
            Expanded(
                child: Container(
              height: 200,
              color: const Color(0xFFe881ea),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Box1(
                    child: Center(
                        child: Text("M",
                            style: Theme.of(context).textTheme.titleMedium)),
                  ),
                  Box1(
                    child: Center(
                        child: Text("N",
                            style: Theme.of(context).textTheme.titleMedium)),
                  ),
                  Box1(
                    child: Center(
                        child: Text("O",
                            style: Theme.of(context).textTheme.titleMedium)),
                  ),
                  Box1(
                    child: Center(
                        child: Text("P",
                            style: Theme.of(context).textTheme.titleMedium)),
                  ),
                ],
              ),
            )),
            Expanded(
                child: Container(
              height: 200,
              color: const Color(0xFF05b5e7),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Box1(
                    child: Center(
                        child: Text("Q",
                            style: Theme.of(context).textTheme.titleMedium)),
                  ),
                  const Box1(
                    child: Center(
                        child: Icon(Icons.settings,color: Colors.white,size: 70,)),
                  ),
                  Box1(
                    child: Center(
                        child: Text("S",
                            style: Theme.of(context).textTheme.titleMedium)),
                  ),
                  Box1(
                    child: Center(
                        child: Text("T",
                            style: Theme.of(context).textTheme.titleMedium)),
                  ),
                ],
              ),
            )),
            Expanded(
                child: Container(
              height: 200,
              color: const Color(0xFFd8db72),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Box1(
                    child: Center(
                        child: Text("U",
                            style: Theme.of(context).textTheme.titleMedium)),
                  ),
                  Box1(
                    child: Center(
                        child: Text("V",
                            style: Theme.of(context).textTheme.titleMedium)),
                  ),
                  Box1(
                    child: Center(
                        child: Text("W",
                            style: Theme.of(context).textTheme.titleMedium)),
                  ),
                  Box1(
                    child: Center(
                        child: Text("X",
                            style: Theme.of(context).textTheme.titleMedium)),
                  ),
                ],
              ),
            )),
            Expanded(
                child: Container(
              height: 200,
              color: const Color(0xFFfead6e),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Box1(
                    child: Center(
                        child: Text("Y",
                            style: Theme.of(context).textTheme.titleMedium)),
                  ),
                  Box1(
                    child: Center(
                        child: Text("Z",
                            style: Theme.of(context).textTheme.titleMedium)),
                  ),
                  Box1(
                    child: IconButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>const Design4()));
                        },
                        icon: const Icon(
                          Icons.arrow_forward,
                          size: 30,
                        )),
                  ),
                ],
              ),
            )),
          ],
        ),
      ),
    );
  }
}

class Box1 extends StatelessWidget {
  const Box1({super.key, this.child});

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: 70,
      color: const Color(0xFFe9c634),
      child: child,
    );
  }
}

/*class Design3 extends StatefulWidget {
  const Design3({super.key});

  @override
  State<Design3> createState() => _Design3State();
}

class _Design3State extends State<Design3> {
  final List<Color> color1=[
    Color(0xFF1ea22f),
    Color(0xFFdc314d),
    Color(0xFF0566e9),
    Color(0xFFe881ea),
    Color(0xFF05b5e7),
    Color(0xFFd8db72),
    Color(0xFFfead6e)




  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: 7,
                itemBuilder: (BuildContext context, int index) {
                  return  Container(
                    height: 200,
                    color:color1[index],
                  );
                },

              ),
            ),

          ],
        ),
      ),
    );
  }
}
*/
