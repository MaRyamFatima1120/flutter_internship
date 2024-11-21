import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class MyDrawerBox extends StatefulWidget {
  const MyDrawerBox({super.key});

  @override
  State<MyDrawerBox> createState() => _MyDrawerBoxState();
}

class _MyDrawerBoxState extends State<MyDrawerBox> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
      ),
      drawer: Drawer(
        child: Column(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    const Color(0xffff00ff).withOpacity(0.4),
                    const Color(0xffff00bf),
                  ],
                )
              ),
              child: Container(
                width: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const CircleAvatar(
                      radius: 40,
                       backgroundImage: AssetImage(
                         "assets/images/1.jpg"
                       ),
                    ),
                    const SizedBox(height: 5.0,),

                    Text("Ali Khan", style: GoogleFonts.aBeeZee(
                      textStyle: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold
                      )
                    ),),

                    Text("alikhan@gmail.com", style: GoogleFonts.aBeeZee(
                        textStyle: const TextStyle(
                            fontSize: 12,
                        )
                    ),),
                  ],
                ),
              ),
            ),

            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 30.0),
                child: ListView(
                  children: const [

                    ListTile(
                      leading: Icon(Icons.notifications_active_outlined),
                      title: Text("Notifications"),
                    ),
                    ListTile(
                      leading: FaIcon(FontAwesomeIcons.message),
                      title: Text("Reviews"),
                    ),
                    ListTile(
                      leading: Icon(Icons.payment),
                      title: Text("Payment"),
                    ),
                    ListTile(
                      leading: FaIcon(FontAwesomeIcons.gear),
                      title: Text("Settings"),
                    ),
                    ListTile(
                      leading: FaIcon(FontAwesomeIcons.lightbulb),
                      title: Text("Light/Dark"),
                    ),

                    ListTile(
                      leading: FaIcon(FontAwesomeIcons.signOut),
                      title: Text("Logout"),
                    ),

                  ],
                ),
              ),
            ),

            const Text("Developed by \nMuhammad  Arslan", textAlign: TextAlign.center,),
            const SizedBox(height: 30.0,)
          ],
        ),
      ),
      body: const Column(
        children: [

        ],
      ),
    );
  }
}
