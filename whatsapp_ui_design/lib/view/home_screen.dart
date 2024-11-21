import 'package:flutter/material.dart';
import 'package:whatsapp_ui_design/view/components/call_screen.dart';
import 'package:whatsapp_ui_design/view/components/camera_screen.dart';
import 'package:whatsapp_ui_design/view/components/chat_screen.dart';
import 'package:whatsapp_ui_design/view/components/status.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 1;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading: false,
            backgroundColor: const Color(0xff1f2c34),
            centerTitle: false,
            title: Text(
              "WhatsApp",
              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    color: const Color(0xffb4b6b2),
                  ),
            ),
            actions: [
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
              )
            ],
            iconTheme: const IconThemeData(
              color: Color(0xffb4b6b2),
            ),
            bottom: PreferredSize(
                preferredSize: const Size.fromHeight(48.0),
                child: TabBar(
                    onTap: (index) {
                      setState(() {
                        _selectedIndex = index;
                      });
                    },
                    indicatorSize: TabBarIndicatorSize.tab,
                    indicatorColor: const Color(0xff03b29d),
                    tabs: [
                      Tab(
                        child: Icon(
                          Icons.camera_alt_outlined,
                          color: _selectedIndex == 0
                              ? const Color(0xff03b29d)
                              : const Color(0xffb4b6b2),
                        ),
                      ),
                      Tab(
                        child: Text(
                          "CHATS",
                          style: TextStyle(
                              color: _selectedIndex == 1
                                  ? const Color(0xff03b29d)
                                  : const Color(0xffb4b6b2),
                              fontSize: 14),
                        ),
                      ),
                      Tab(
                        child: Text(
                          "STATUS",
                          style: TextStyle(
                              color: _selectedIndex == 2
                                  ? const Color(0xff03b29d)
                                  : const Color(0xffb4b6b2),
                              fontSize: 14),
                        ),
                      ),
                      Tab(
                        child: Text(
                          "CALLS",
                          style: TextStyle(
                              color: _selectedIndex == 3
                                  ? const Color(0xff03b29d)
                                  : const Color(0xffb4b6b2),
                              fontSize: 14),
                        ),
                      ),
                    ])),
          ),
          body: const TabBarView(
              children: [
                CameraApp(),
                ChatScreen(),
                StatusScreen(),
                CallScreen(),
              ])

        ),
      ),
    );
  }
}
