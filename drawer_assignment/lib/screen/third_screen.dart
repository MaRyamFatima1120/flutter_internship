import 'package:drawer_assignment/screen/fourth_screen.dart';
import 'package:flutter/material.dart';

class ThirdScreen extends StatefulWidget {
  const ThirdScreen({super.key});

  @override
  State<ThirdScreen> createState() => _ThirdScreenState();
}

class _ThirdScreenState extends State<ThirdScreen> {
  @override
  Widget build(BuildContext context) {
    var screenWidth =MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(),
        drawer: Drawer(
          elevation: 4.0,
          shadowColor: Colors.grey.withOpacity(0.4),
          child:  Column(
            children: [
              DrawerHeader(
                decoration:const BoxDecoration(
                  image: DecorationImage(image: AssetImage("assets/images/bg1.jpg"),
                  fit: BoxFit.fill),
                ),
                  child:SizedBox(
                    width: screenWidth,

                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: screenHeight *0.1,
                          width: screenWidth * 0.2,
                          decoration:const BoxDecoration(
                            image: DecorationImage(image: AssetImage("assets/images/gif1.png"))
                          ),

                        ),
                        const Text("Travelling",style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700
                        ),),
                        const Text("123@gmail.com",style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400
                        ),),
                        

                      ],
                    ) ,
                  ) ),
              Expanded(
                child: ListView(
                  children:  const [
                    ListTile(
                      leading: Icon(Icons.home,),
                      title: Text("Home"),
                    ),
                    ListTile(
                      leading: Icon(Icons.motorcycle,),
                      title: Text("Cycling"),
                    ),
                    ListTile(
                      leading: Icon(Icons.bus_alert,),
                      title: Text("Bus"),
                    ),
                    ListTile(
                      leading: Icon(Icons.airplane_ticket_rounded,),
                      title: Text("Plane"),
                    ),
                     Divider(height: 2,),
                     Padding(
                       padding: EdgeInsets.all(10.0),
                       child: Text("Profile",style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700
                                           ),),
                     ),
                    ListTile(
                      leading: Icon(Icons.login,),
                      title: Text("Login"),
                    ),
                    Divider(height: 2,),
                    Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Text("Communicate",style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700
                      ),),
                    ),
                    ListTile(
                      leading: Icon(Icons.share,),
                      title: Text("Share"),
                    ),
                    ListTile(
                      leading: Icon(Icons.rate_review,),
                      title: Text("Rate Us"),
                    ),
                    SizedBox(height: 100,),
                    Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Center(
                        child: Text("Developed by Maryam Munawar Ahmad ",style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w700
                        ),),
                      ),
                    ),
                    SizedBox(height: 10,),
                  ],
                ),
              )
            ],
          ),
        ),
        body: Center(child: TextButton(
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>const FourthScreen()));
          },
          child: const Text("Next Screen",style: TextStyle(fontSize: 20,color: Colors.black),),
        ),),
      ),
    );
  }
}
