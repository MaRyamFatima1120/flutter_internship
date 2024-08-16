import 'package:drawer_assignment/screen/foodpanda_screen.dart';
import 'package:flutter/material.dart';

class EmailScreen extends StatefulWidget {
  const EmailScreen({super.key});

  @override
  State<EmailScreen> createState() => _EmailScreenState();
}

class _EmailScreenState extends State<EmailScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        key: _scaffoldKey,
        backgroundColor: const Color(0xff12121a),
        drawer: Drawer(
          backgroundColor: const Color(0xff1f212d),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: ListView(
                  children: [
                    const Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 15.0, vertical: 15.0),
                      child: Text(
                        "Gmail",
                        style:
                            TextStyle(fontSize: 25, color: Colors.white),
                      ),
                    ),
                    const Divider(),
                    ListTile(
                      leading: const Icon(
                        Icons.all_inbox,
                        color: Colors.white,
                      ),
                      title: const Text(
                        "All inboxes",
                        style: TextStyle(color: Colors.white),
                      ),
                      onTap: () {
                        print("All inboxes Screen is Shown");
                      },
                    ),
                    const Divider(),
                    ListTile(
                      leading: const Icon(
                        Icons.inbox,
                        color: Colors.white,
                      ),
                      title: const Text(
                        "Primary",
                        style: TextStyle(color: Colors.white),
                      ),
                      onTap: () {
                        print("Primary Screen");
                      },
                      trailing: Container(
                        width: 60,
                        height: 30,
                        decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(20.0)),
                        child: const Center(
                            child: Text(
                          "5 new",
                          style: TextStyle(color: Colors.black),
                        )),
                      ),
                    ),
                    ListTile(
                      leading: const Icon(
                        Icons.label_outline,
                        color: Colors.white,
                      ),
                      title: const Text(
                        "Promotions",
                        style: TextStyle(color: Colors.white),
                      ),
                      onTap: () {
                        print("Promotions Screen");
                      },
                      trailing: Container(
                        width: 60,
                        height: 30,
                        decoration: BoxDecoration(
                            color: const Color(0xff82c295),
                            borderRadius: BorderRadius.circular(20.0)),
                        child: const Center(
                            child: Text(
                          "3 new",
                          style: TextStyle(color: Colors.black),
                        )),
                      ),
                    ),
                    ListTile(
                      leading: const Icon(
                        Icons.group,
                        color: Colors.white,
                      ),
                      title: const Text(
                        "Social",
                        style: TextStyle(color: Colors.white),
                      ),
                      onTap: () {
                        print("Social Screen");
                      },
                      trailing: Container(
                        width: 60,
                        height: 30,
                        decoration: BoxDecoration(
                            color: Colors.blueAccent,
                            borderRadius: BorderRadius.circular(20.0)),
                        child: const Center(
                            child: Text(
                          "4 new",
                          style: TextStyle(color: Colors.black),
                        )),
                      ),
                    ),
                    ListTile(
                      leading: const Icon(
                        Icons.info_outline,
                        color: Colors.white,
                      ),
                      title: const Text(
                        "Updates",
                        style: TextStyle(color: Colors.white),
                      ),
                      onTap: () {
                        print("Updates Screen");
                      },
                      trailing: Container(
                        width: 60,
                        height: 30,
                        decoration: BoxDecoration(
                            color: const Color(0xfffdad6c),
                            borderRadius: BorderRadius.circular(20.0)),
                        child: const Center(
                            child: Text(
                              "5 new",
                              style: TextStyle(color: Colors.black),
                            )),
                      ),
                    ),
                    const Padding(
                      padding:  EdgeInsets.all(12.0),
                      child:  Text(
                        "All labels",
                        style: TextStyle(color: Colors.grey),
                      ),
                    ),
                    ListTile(
                      leading: const Icon(
                        Icons.star_border,
                        color: Colors.white,
                      ),
                      title: const Text(
                        "Starred",
                        style: TextStyle(color: Colors.white),
                      ),
                      onTap: () {
                        print("Starred Screen");
                      },
                      trailing:const Text(
                        "21",
                        style: TextStyle(color: Colors.white,
                      )),
                    ),
                    ListTile(
                      leading: const Icon(
                        Icons.access_time,
                        color: Colors.white,
                      ),
                      title: const Text(
                        "Snoozed",
                        style: TextStyle(color: Colors.white),
                      ),
                      onTap: () {
                        print("SSnoozed Screen");
                      },

                    ),
                    ListTile(
                      leading: const Icon(
                        Icons.label_important_outline_rounded,
                        color: Colors.white,
                      ),
                      title: const Text(
                        "Important",
                        style: TextStyle(color: Colors.white),
                      ),
                      onTap: () {
                        print("Important Screen");
                      },
                      trailing:const Text(
                          "390",
                          style: TextStyle(color: Colors.white,
                          )),
                    ),
                    ListTile(
                      leading: const Icon(
                        Icons.send_outlined,
                        color: Colors.white,
                      ),
                      title: const Text(
                        "Sent",
                        style: TextStyle(color: Colors.white),
                      ),
                      onTap: () {
                        print("Sent Screen");
                      },
                      trailing:const Text(
                          "1",
                          style: TextStyle(color: Colors.white,
                          )),
                    ),
                    ListTile(
                      leading: const Icon(
                        Icons.schedule_send,
                        color: Colors.white,
                      ),
                      title: const Text(
                        "Schedule",
                        style: TextStyle(color: Colors.white),
                      ),
                      onTap: () {
                        print("Schedule Screen");
                      },

                    ),
                    ListTile(
                      leading: const Icon(
                        Icons.outbox,
                        color: Colors.white,
                      ),
                      title: const Text(
                        "Outbox",
                        style: TextStyle(color: Colors.white),
                      ),
                      onTap: () {
                        print("Outbox Screen");
                      },

                    ),
                    ListTile(
                      leading: const Icon(
                        Icons.note,
                        color: Colors.white,
                      ),
                      title: const Text(
                        "Draft",
                        style: TextStyle(color: Colors.white),
                      ),
                      onTap: () {
                        print("Drafts Screen");
                      },
                      trailing:const Text(
                          "12",
                          style: TextStyle(color: Colors.white,
                          )),
                    ),
                    ListTile(
                      leading: const Icon(
                        Icons.mail_outline,
                        color: Colors.white,
                      ),
                      title: const Text(
                        "All mails",
                        style: TextStyle(color: Colors.white),
                      ),
                      onTap: () {
                        print("All mails Screen");
                      },
                      trailing:const Text(
                          "99+",
                          style: TextStyle(color: Colors.white,
                          )),
                    ),
                    ListTile(
                      leading: const Icon(
                        Icons.report_gmailerrorred,
                        color: Colors.white,
                      ),
                      title: const Text(
                        "Spam",
                        style: TextStyle(color: Colors.white),
                      ),
                      onTap: () {
                        print("Spam Screen");
                      },
                      trailing:const Text(
                          "16",
                          style: TextStyle(color: Colors.white,
                          )),
                    ),
                    ListTile(
                      leading: const Icon(
                        Icons.delete,
                        color: Colors.white,
                      ),
                      title: const Text(
                        "Bin",
                        style: TextStyle(color: Colors.white),
                      ),
                      onTap: () {
                        print("All mailsBin Screen");
                      },

                    ),
                    const Padding(
                      padding:  EdgeInsets.all(12.0),
                      child:  Text(
                        "Google apps",
                        style: TextStyle(color: Colors.grey),
                      ),
                    ),
                    ListTile(
                      leading: const Icon(
                        Icons.calendar_today,
                        color: Colors.white,
                      ),
                      title: const Text(
                        "Calendar",
                        style: TextStyle(color: Colors.white),
                      ),
                      onTap: () {
                        print("calendar Screen");
                      },

                    ),
                    ListTile(
                      leading: const Icon(
                        Icons.account_circle_outlined,
                        color: Colors.white,
                      ),
                      title: const Text(
                        "Contacts",
                        style: TextStyle(color: Colors.white),
                      ),
                      onTap: () {
                        print("calendar Screen");
                      },

                    ),
                    Divider(),
                    ListTile(
                      leading: const Icon(
                        Icons.settings,
                        color: Colors.white,
                      ),
                      title: const Text(
                        "Settings",
                        style: TextStyle(color: Colors.white),
                      ),
                      onTap: () {
                        print("Settings Screen");
                      },

                    ),
                    ListTile(
                      leading: const Icon(
                        Icons.help_outline_rounded,
                        color: Colors.white,
                      ),
                      title: const Text(
                        "Help and feedback",
                        style: TextStyle(color: Colors.white),
                      ),
                      onTap: () {
                        print("Help and feedback Screen");
                      },

                    ),
                  ],
                ),
              )
            ],
          ),
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SearchAnchor(
                  builder: (BuildContext context, SearchController controller) {
                return SearchBar(
                  controller: controller,
                  padding: const WidgetStatePropertyAll<EdgeInsets>(
                      EdgeInsets.symmetric(horizontal: 20.0, vertical: 0)),
                  leading: IconButton(
                      onPressed: () {
                        _scaffoldKey.currentState?.openDrawer();
                      },
                      icon: const Icon(
                        Icons.menu,
                        color: Colors.white,
                      )),
                  onTap: () {
                    controller.openView();
                  },
                  onChanged: (_) {
                    controller.openView();
                  },
                  backgroundColor:
                      WidgetStateProperty.all(const Color(0xff1f1f27)),
                  hintText: 'Search in emails',
                  hintStyle: WidgetStateProperty.all(
                      const TextStyle(color: Colors.white)),
                  trailing: [
                    Stack(
                      alignment: Alignment.center,
                      children: [
                        IconButton(
                            onPressed: () {
                              print("M");
                            },
                            icon: const Icon(
                              Icons.circle,
                              color: Colors.blue,
                              size: 40,
                            )),
                        const Text(
                          "M",
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    )
                  ],
                );
              }, suggestionsBuilder:
                      (BuildContext context, SearchController controller) {
                return List<ListTile>.generate(5, (int index) {
                  final String item = 'item $index';
                  return ListTile(
                    title: Text(item),
                    onTap: () {
                      setState(() {
                        controller.closeView(item);
                      });
                    },
                  );
                });
              }),
            ),
            
            Expanded(
              child: Center(child: TextButton(
                onPressed: (){
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>
                  const FoodPandaScreen()));
                },
                child:const Text("NEXT SCREEN",style: TextStyle(
                  color: Colors.white
                ),),
              ),),
            ),
          ],
        ),
      ),
    );
  }
}
