import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'dialogue_box/dialogue_box.dart';
import 'guess_game/game_getx/guess_game_with_getX.dart';
import 'guess_game/guess_gaming_ui.dart';

class BottomSheet1 extends StatefulWidget {
  const BottomSheet1({super.key});

  @override
  State<BottomSheet1> createState() => _BottomSheet1State();
}

class _BottomSheet1State extends State<BottomSheet1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff7368f3),
      appBar: AppBar(
        backgroundColor: const Color(0xff7368f3),
        iconTheme: const IconThemeData(color: Colors.white),

      ),
      drawer: Drawer(
        backgroundColor: Colors.white,
        elevation: 4.0,
        child:Column(
          children: [
            const UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                color: Color(0xff7368f3),
              ),
                currentAccountPictureSize:Size(50, 50) ,
                accountName: Text("Maryam"), accountEmail: Text("maryamfatimanavtcc@gmail.com")),
           Expanded(
             child: ListView(
               children: [
                 ListTile(
                   onTap:(){
                     Navigator.push(context, MaterialPageRoute(builder: (context)=>const BottomSheet1()));
                   },
                   leading: const Icon(Icons.chat,color: Color(0xff7368f3),),
                   title: const Text("ChatBot Screen",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w700),),
                 ),
                 ListTile(
                   onTap:(){
                     Navigator.push(context, MaterialPageRoute(builder: (context)=>const DialogueBox1()));
                   },
                   leading: const Icon(Icons.wine_bar,color: Color(0xff7368f3),),
                   title: const Text("Dialogue Screen",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w700),),
                 ),
                 ListTile(
                   onTap:(){
                     Navigator.push(context, MaterialPageRoute(builder: (context)=>const GuessGame()));
                   },
                   leading: const Icon(Icons.games,color: Color(0xff7368f3),),
                   title: const Text("Guess Game",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w700),),
                 ),
                 ListTile(
                   onTap:(){
                     Navigator.push(context, MaterialPageRoute(builder: (context)=>const GameGuess()));
                   },
                   leading: const Icon(Icons.games,color: Color(0xff7368f3),),
                   title: const Text("Game Guess with GetX",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w700),),
                 )
               ],
               
             ),
           )
          ],
        )
      ),
      floatingActionButton: FloatingActionButton(
        hoverColor: const Color(0xff7368f3),
        onPressed: () {
          Get.bottomSheet(Container(
            height: 600,
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20.0),
                  topRight: Radius.circular(20.0),
                )),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
               const Center(
                  child:CircleAvatar(
                    radius: 70,
                    backgroundColor: Color(0xff7368f3),
                    child: Icon(Icons.chat,size: 50,color: Colors.white,),
                  )
                ),
                const SizedBox(height: 60,),
                const Text("How can I help\nyou today?",style: TextStyle(color:Color(0xff7368f3),fontSize:30 ,fontWeight: FontWeight.bold,),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 60,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: IconButton(onPressed: (){}, icon: const Icon(Icons.add)),
                    ),
                    Container(
                      width: 250,
                      height: 50,
                      decoration: BoxDecoration(
                         // color: Colors.pink,
                           color: const Color(0xfff2f2f2),
                        borderRadius: BorderRadius.circular(50.0)
                      ),
                      child:const Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Text(
                          "Ask",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20
                          ),
                        ),
                      ),

                    ),
                    const Padding(
                      padding: EdgeInsets.all(10.0),
                      child: CircleAvatar(
                        radius: 20,
                        backgroundColor: Color(0xff7368f3),
                        child: Icon(Icons.mic,color: Colors.white,),
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 20,),
              ],
            ),
          ));
        },
        child: const Icon(
          Icons.chat,
          color: Color(0xff7368f3),
        ),
      ),
    );
  }
}
