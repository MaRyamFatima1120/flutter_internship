import 'dart:ui';
import 'package:drawer_assignment/screen/third_screen.dart';
import 'package:flutter/material.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({super.key});

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          actions: [
            IconButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>const ThirdScreen()));
            }, icon: const Icon(Icons.arrow_forward_ios,))
          ],
          iconTheme: const IconThemeData(
            color: Colors.white
          ),
        ),

        drawer: Drawer(
          backgroundColor: Colors.transparent,
          child:Column(
            children: [

              Expanded(
                child: ListView(
                  children: [
                    SizedBox(
                      // margin: EdgeInsets.symmetric(horizontal: 20),
                      width: screenWidth,
                      height: screenHeight * 0.3,
                      //color: Colors.white,
                      child:  Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Padding(
                            padding:  EdgeInsets.symmetric(horizontal: 20.0),
                            child: CircleAvatar(
                              radius: 50,
                              backgroundColor: Color(0xff2b2b2b),
                              backgroundImage: AssetImage(
                                "assets/images/download.jpg",
                              ),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.all(15.0),
                            child: Text(
                              "Maryam Fatima",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 20),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Text(
                              "maryamfatimanavtcc@gmail.com",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 12),
                            ),
                          ),
                          SizedBox(
                            width: 200,
                            child: OutlinedButton(onPressed: (){},
                              child: const Text("SIGN OUT",style: TextStyle(color: Colors.white),),

                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 20,),
                    const ListTile(
                      leading: Icon(
                        Icons.edit,
                        color: Colors.white,
                      ),
                      title: Text(
                        "Add Leads",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w600,
                            color:  Colors.white),
                      ),
                    ),
                    const ListTile(
                      leading: Icon(
                        Icons.star,
                        color: Colors.white,
                      ),
                      title:  Text(
                        "Points Redemption",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w600,
                            color:  Colors.white),
                      ),
                    ),
                    const ListTile(
                      leading: Icon(
                        Icons.add_sharp,
                        color: Colors.white,
                      ),
                      title: Text(
                        "Points",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w600,
                            color:  Colors.white),
                      ),
                    ),
                    const ListTile(
                      leading: Icon(
                        Icons.person,
                        color: Colors.white,
                      ),
                      title: Text(
                        "Profile",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w600,
                            color:  Colors.white),
                      ),
                    ),
                    const ListTile(
                      leading: Icon(
                        Icons.dashboard_customize_sharp ,
                        color: Colors.white,
                      ),
                      title: Text(
                        "Dashboard",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w600,
                            color:  Colors.white),
                      ),
                    ),
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
                    const Divider(
                      color: Colors.white,
                      thickness: 2,
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10.0),
                      child:  Text(
                        "Communicate",
                        style: TextStyle(
                            fontSize: 16  , fontWeight: FontWeight.w500,
                            color:  Colors.white),

                      ),
                    ),
                    const ListTile(
                      leading: Icon(
                        Icons.lock,
                        color: Colors.white,
                      ),
                      title: Text(
                        "Privacy Policy",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w600,
                            color:  Colors.white),
                      ),
                    ),
                    const ListTile(
                      leading: Icon(
                        Icons.call,
                        color: Colors.white,
                      ),
                      title: Text(
                        "Contact Us",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w600,
                            color:  Colors.white),
                      ),
                    ),
                    const ListTile(
                      leading: Icon(
                        Icons.app_shortcut_outlined,
                        color: Colors.white,
                      ),
                      title: Text(
                        "About App",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w600,
                            color:  Colors.white),
                      ),
                    ),
                    SizedBox(height: screenHeight*0.05,),
                    const Center(
                      child: Text(
                        "Developed by Maryam Fatima",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w500,
                            color:  Colors.white),
                      ),
                    ),
                    const SizedBox(height: 10,),

                  ],
                ),
              ),

            ],
          ),

        ),
        body: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: const BoxDecoration(
            image:DecorationImage(image: AssetImage(
              "assets/images/1.jpg",
            ),
              fit: BoxFit.fitHeight,
              filterQuality: FilterQuality.high,
            )
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            BackdropFilter(filter: ImageFilter.blur(
              sigmaX: 5.0,
              sigmaY:5.0
            )),

            ],
          ),
        ),

      ),
    );
  }
}
