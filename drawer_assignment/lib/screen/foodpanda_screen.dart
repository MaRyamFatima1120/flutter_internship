
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:google_fonts/google_fonts.dart';

class FoodPandaScreen extends StatefulWidget {
  const FoodPandaScreen({super.key});

  @override
  State<FoodPandaScreen> createState() => _FoodPandaScreenState();
}

class _FoodPandaScreenState extends State<FoodPandaScreen> {
  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;

    var screenHeight = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xffe21c71),
          iconTheme: const IconThemeData(color: Colors.white),
        ),
        drawerScrimColor: Colors.transparent,
        drawer: SizedBox(
          width: 350,
          child: Drawer(
              shape:
                  const RoundedRectangleBorder(borderRadius: BorderRadius.zero),
              child: Column(
                children: [
                  Expanded(
                    child: ListView(
                      children: [
                        Container(
                          width: screenWidth,
                          height: screenHeight * 0.25,
                          color: const Color(0xfff7f7f7),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 10.0, vertical: 30.0),
                                child: CircleAvatar(
                                  radius: 30,
                                  backgroundColor: const Color(0xff39434d),
                                  child: Text(
                                    "M",
                                    style: GoogleFonts.openSans(
                                        textStyle: const TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 30)),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 10.0, vertical: 10.0),
                                child: Text(
                                  "Maryam F",
                                  style: GoogleFonts.openSans(
                                      textStyle: const TextStyle(
                                          color: Color(0xff39434d),
                                          fontWeight: FontWeight.bold,
                                          fontSize: 24)),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 12.0,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              RichText(
                                  text: TextSpan(children: [
                                TextSpan(
                                    text: "panda",
                                    style: GoogleFonts.openSans(
                                      textStyle: const TextStyle(
                                          color: Color(0xffFF2B85),
                                          fontSize: 15,
                                          fontWeight: FontWeight.w600),
                                    )),
                                WidgetSpan(
                                  child: Transform(
                                    transform: Matrix4.skewX(-0.2),
                                    origin: const Offset(100, 20),
                                    child: Container(
                                      height: 18,
                                      width: 30,
                                      color: const Color(0xffFF2B85),
                                      child: Align(
                                        alignment: Alignment.topCenter,
                                        child: Text(
                                          "pay",
                                          style: GoogleFonts.openSans(
                                            color: Colors.white,
                                            fontSize: 14,
                                            fontWeight: FontWeight.w600,
                                            fontStyle: FontStyle.italic,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                )
                              ])),
                              Container(
                                width: 50,
                                height: 20,
                                decoration: BoxDecoration(
                                    color: const Color(0xffc0d4dd),
                                    borderRadius: BorderRadius.circular(20.0)),
                                child: const Center(
                                    child: Text(
                                  "Rs. 0.00",
                                  style: TextStyle(
                                      fontSize: 11,
                                      color: Color(0xff31929f),
                                      fontWeight: FontWeight.bold),
                                )),
                              ),
                            ],
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 12.0, vertical: 15),
                          child: Text(
                            "Top up, check your balance and get exciting offers!",
                            style: TextStyle(fontSize: 13.5),
                          ),
                        ),
                        const Divider(),
                        ListTile(
                          leading: const Icon(MaterialCommunityIcons.crown,
                              size: 20, color: Colors.deepPurple),
                          title: const Text(
                            "Become a pandapro",
                            style: TextStyle(color: Colors.black, fontSize: 14),
                          ),
                          onTap: () {
                            print("Become a pandapro Screen");
                          },
                        ),
                        ListTile(
                          leading: const Icon(
                            MaterialCommunityIcons.tag_outline,
                            size: 20,
                          ),
                          title: const Text(
                            "Offers",
                            style: TextStyle(color: Colors.black, fontSize: 14),
                          ),
                          onTap: () {
                            print("Offers Screen");
                          },
                        ),
                        ListTile(
                          leading: const Icon(
                            MaterialCommunityIcons.heart_outline,
                            size: 20,
                          ),
                          title: const Text(
                            "Favourites",
                            style: TextStyle(color: Colors.black, fontSize: 14),
                          ),
                          onTap: () {
                            print("Favourites Screen");
                          },
                        ),
                        ListTile(
                          leading: const Icon(
                            MaterialCommunityIcons.file_document_outline,
                            size: 20,
                          ),
                          title: const Text(
                            "Orders & reordering",
                            style: TextStyle(color: Colors.black, fontSize: 14),
                          ),
                          onTap: () {
                            print("Orders & reordering Screen");
                          },
                        ),
                        ListTile(
                          leading: const Icon(
                            MaterialCommunityIcons.account_outline,
                            size: 20,
                          ),
                          title: const Text(
                            "View Profile",
                            style: TextStyle(color: Colors.black, fontSize: 14),
                          ),
                          onTap: () {
                            print("View Profile Screen");
                          },
                        ),
                        ListTile(
                          leading: const Icon(
                            MaterialCommunityIcons.map_marker_outline,
                            size: 20,
                          ),
                          title: const Text(
                            "Address",
                            style: TextStyle(color: Colors.black, fontSize: 14),
                          ),
                          onTap: () {
                            print("Address Screen");
                          },
                        ),
                        ListTile(
                          leading: const Icon(
                            MaterialCommunityIcons.trophy_outline,
                            size: 20,
                          ),
                          title: const Text(
                            "panda rewards",
                            style: TextStyle(color: Colors.black, fontSize: 14),
                          ),
                          onTap: () {
                            print("panda rewards Screen");
                          },
                        ),
                        ListTile(
                          leading: const Icon(
                            MaterialCommunityIcons.help_circle_outline,
                            size: 20,
                          ),
                          title: const Text(
                            "Help Center",
                            style: TextStyle(color: Colors.black, fontSize: 14),
                          ),
                          onTap: () {
                            print("Help Center Screen");
                          },
                        ),
                        ListTile(
                          leading: const Icon(
                            MaterialCommunityIcons.office_building_outline,
                            size: 20,
                          ),
                          title: const Text(
                            "foodpanda for business",
                            style: TextStyle(color: Colors.black, fontSize: 14),
                          ),
                          onTap: () {
                            print("foodpanda for business Screen");
                          },
                        ),
                        ListTile(
                          leading: const Icon(
                            MaterialCommunityIcons.gift_outline,
                            size: 20,
                          ),
                          title: const Text(
                            "Invite friends",
                            style: TextStyle(color: Colors.black, fontSize: 14),
                          ),
                          onTap: () {
                            print("Invite friends Screen");
                          },
                        ),
                        ListTile(
                          title: const Text(
                            "Settings",
                            style: TextStyle(color: Colors.black, fontSize: 14),
                          ),
                          onTap: () {
                            print("Settings Screen");
                          },
                        ),
                        ListTile(
                          title: const Text(
                            "Terms & Conditions/Privacy",
                            style: TextStyle(color: Colors.black, fontSize: 14),
                          ),
                          onTap: () {
                            print("Terms & Conditions/Privacy Screen");
                          },
                        ),
                        ListTile(
                          title: const Text(
                            "Logout",
                            style: TextStyle(color: Colors.black, fontSize: 14),
                          ),
                          onTap: () {
                            print("Logout Screen");
                          },
                        ),
                      ],
                    ),
                  )
                ],
              )),
        ),

      ),
    );
  }
}
