import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../components/tabs/callsView.dart';
import '../components/tabs/chatsView.dart';
import '../components/tabs/statusView.dart';

class ChatsScreen extends StatefulWidget {
  const ChatsScreen({super.key});

  @override
  State<ChatsScreen> createState() => _ChatsScreenState();
}

class _ChatsScreenState extends State<ChatsScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xff008069),
          centerTitle: false,
          title: Text(
            "WhatsApp",
            style: GoogleFonts.poppins(textStyle: const TextStyle(color: Colors.white)),
          ),

          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(48.0),
            child: TabBar(
              tabs: [
                const Tab(
                  child: Icon(Icons.camera_alt_outlined, color: Colors.white,),
                ),

                Tab(
                  child: Text("Chats",  style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),),
                ),

                Tab(
                  child: Text("Status",  style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),),
                ),

                Tab(
                  child: Text("Calls",  style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),),
                ),
              ],
            ),
          ),

          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.camera_alt_outlined,
              ),
            ),

            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.search,
              ),
            ),

            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.more_vert,
              ),
            ),

          ],

          iconTheme: const IconThemeData(
            color: Colors.white,
          ),
        ),
        body: const TabBarView(
          children: [
            Center(
              child: Text("Camera", style: TextStyle(fontSize: 20),),
            ),
            ChatView(),
            StatusView(),
            CallsView(),
          ]
        ),
      ),
    );
  }
}
