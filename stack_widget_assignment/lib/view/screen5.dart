
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class Screen5 extends StatefulWidget {
  const Screen5({super.key});

  @override
  State<Screen5> createState() => _Screen5State();
}

class _Screen5State extends State<Screen5> {

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: screenWidth,
          height: screenHeight,
          decoration:const BoxDecoration(
            image: DecorationImage(image: AssetImage("assets/images/bg.jpg"),
            fit: BoxFit.fitHeight)
          ),
          child: BackdropFilter(
            filter: ImageFilter.blur(
              sigmaX: 2.0,
              sigmaY: 2.0
            ),
            child:Stack(
              clipBehavior: Clip.none,
              children: [

                Container(
                  width: screenWidth,
                  height: screenHeight * 0.6,
                  decoration:const BoxDecoration(
                    image: DecorationImage(image: AssetImage("assets/images/3.png"))
                  ),
                ),
                Positioned(
                  bottom: 0.0,
                  child: Container(
                    width: screenWidth,
                    height: screenHeight * 0.4,

                    decoration:const BoxDecoration(
                        color:Color(0xff272b2c),
                      borderRadius: BorderRadius.only(topRight: Radius.circular(40.0),topLeft: Radius.circular(40.0)),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Order & Let's eat",style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white,
                                  fontSize: 38
                              ),),
                              RichText(
                                text:TextSpan(
                                    children: [
                                      TextSpan(
                                        text:"Healthy",
                                        style: GoogleFonts.poppins(
                                            fontWeight: FontWeight.w700,
                                            color: Colors.white,
                                            fontSize: 35
                                        ),
                                      ),
                                      TextSpan(
                                        text:" Food",
                                        style: GoogleFonts.poppins(
                                            fontWeight: FontWeight.w700,
                                            color: const Color(0xffffc013),
                                            fontSize: 35
                                        ),
                                      )
                                    ]
                                ), ),
                            ],
                          ),
                          Text("Order Food And Get Dalivery In The Fastest\nTime In The Town",
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w700,
                                color:Colors.white,
                                fontSize: 14
                            )
                          ),
                          const SizedBox(height: 20,),
                          Center(
                            child: Container(
                              width: screenWidth * 0.8,
                              height: 70,
                              decoration: BoxDecoration(
                                  color: const Color(0xffffc013),
                                borderRadius: BorderRadius.circular(10.0)
                              ),
                              child: Center(
                                child: Text("Get Started",style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w700,
                                    color: const Color(0xff282c2f),
                                    fontSize: 20,
                                ),),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),


              ],
            )
          ),

        ),

      ),
    );
  }
}
