import 'package:flutter/material.dart';

import '2nd_drawer_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        key: scaffoldKey,
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              scaffoldKey.currentState!.openDrawer();
            },
            icon: const Icon(Icons.grid_view),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.search),
              color: Colors.black,
            )
          ],
          iconTheme: const IconThemeData(color: Colors.amber),
        ),
        drawer: Drawer(
          backgroundColor: const Color(0xff2b2b2b),
          child: Column(
            children: [
              SizedBox(
                // margin: EdgeInsets.symmetric(horizontal: 20),
                width: screenWidth,
                height: screenHeight * 0.3,
                //color: Colors.white,
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20.0),
                        child: CircleAvatar(
                          radius: 60,
                          backgroundColor: Color(0xff2b2b2b),
                          backgroundImage: AssetImage(
                            "assets/images/download.jpg",
                          ),
                        ),
                      ),
                    ),
                    Center(
                      child: Padding(
                        padding: EdgeInsets.all(25.0),
                        child: Text(
                          "Maryam Fatima",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w700,
                              fontSize: 20),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: ListView(
                  children: [
                    const ListTile(
                      leading: Icon(
                        Icons.home,
                        color: Colors.white,
                      ),
                      title: Text(
                        "Home",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w600,
                        color:  Colors.white),
                      ),
                    ),

                    const ListTile(
                      leading: Icon(
                        Icons.travel_explore,
                        color: Colors.white,
                      ),
                      title:  Text(
                        "Travel",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w600,
                            color:  Colors.white),
                      ),
                    ),


                    const ListTile(
                      leading: Icon(
                        Icons.settings,
                        color: Colors.white,
                      ),
                      title: Text(
                        "Setting",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w600,
                            color:  Colors.white),
                      ),
                    ),

                    const ListTile(
                      leading: Icon(
                        Icons.help_outline_rounded ,
                        color: Colors.white,
                      ),
                      title: Text(
                        "Help",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w600,
                            color:  Colors.white),
                      ),
                    ),
                    SizedBox(height: screenHeight*0.25,),
                    const ListTile(
                      leading: Icon(
                        Icons.logout ,
                        color: Colors.white,
                      ),
                      title: Text(
                        "Log Out",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w600,
                            color:  Colors.white),
                      ),
                    )


                  ],
                ),
              ),

            ],
          ),
        ),
        body: Center(child: TextButton(
          onPressed: (){
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>
            const SecondScreen()));
          },
          child:const Text("NEXT SCREEN",style: TextStyle(
            color: Colors.black
          ),),
        ),),
      ),
    );
  }
}
