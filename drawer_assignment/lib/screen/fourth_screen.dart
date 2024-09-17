import 'package:drawer_assignment/screen/chatgpt_screen.dart';
import 'package:flutter/material.dart';

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
      drawer: Drawer(
        child: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Color(0xfffb7f53), Color(0xfffb4f5c)])),
          child: Column(
            children: [
              const DrawerHeader(
                  child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 40,
                    //backgroundColor: Colors.white,
                    backgroundImage: AssetImage("assets/images/download.jpg"),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Terra Carwal",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                        Text(
                          "Administrator",
                          style: TextStyle(color: Colors.white, fontSize: 14),
                        ),
                      ],
                    ),
                  )
                ],
              )),
              Expanded(
                child: ListView(
                  children: [
                    const ListTile(
                      leading: Icon(
                        Icons.dashboard,
                        color: Colors.white,
                      ),
                      title: Text(
                        "Dashboard",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    const ListTile(
                      leading: Icon(
                        Icons.leaderboard,
                        color: Colors.white,
                      ),
                      title: Text(
                        "Leads",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    const ListTile(
                      leading: Icon(
                        Icons.wallet_giftcard,
                        color: Colors.white,
                      ),
                      title: Text(
                        "Clients",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    const ListTile(
                      leading: Icon(
                        Icons.rocket,
                        color: Colors.white,
                      ),
                      title: Text(
                        "Projects",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    const ListTile(
                      leading: Icon(
                        Icons.handshake_rounded,
                        color: Colors.white,
                      ),
                      title: Text(
                        "Partner",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    const ListTile(
                      leading: Icon(
                        Icons.subscriptions_outlined,
                        color: Colors.white,
                      ),
                      title: Text(
                        "Subscription",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    const ListTile(
                      leading: Icon(
                        Icons.payment,
                        color: Colors.white,
                      ),
                      title: Text(
                        "Payments",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    const ListTile(
                      leading: Icon(
                        Icons.supervised_user_circle_rounded,
                        color: Colors.white,
                      ),
                      title: Text(
                        "Users",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    const ListTile(
                      leading: Icon(
                        Icons.library_books_rounded,
                        color: Colors.white,
                      ),
                      title: Text(
                        "Library",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xfffb7f53)),
                        child: const Text(
                          "Logout",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const ChatgptScreen()));
            },
            icon: const Icon(Icons.arrow_forward_ios),
          ),
        ],
      ),
    ));
  }
}
