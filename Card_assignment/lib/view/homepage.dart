import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gradient_icon/gradient_icon.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  final List<Map<String, dynamic>> cardData = [
    {
      "title": "Memories",
      "icon": Icons.restore,
      "gradient": const LinearGradient(
        colors: [Colors.blue, Colors.lightBlueAccent],
        begin: Alignment.bottomLeft,
        end: Alignment.topRight,
      ),
    },
    {
      "title": "Saved",
      "icon": Icons.save,
      "gradient": const LinearGradient(
        colors: [Colors.pink, Colors.deepPurple],
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
      ),
    },
    {
      "title": "Groups",
      "icon": Icons.groups,
      "gradient": const LinearGradient(
        colors: [Colors.blue, Colors.lightBlueAccent],
        begin: Alignment.bottomLeft,
        end: Alignment.topRight,
      ),
    },
    {
      "title": "Video",
      "icon": Icons.ondemand_video,
      "gradient": const LinearGradient(
        colors: [
          Colors.lightBlueAccent,
          Colors.blue,
        ],
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
      ),
    },
    {
      "title": "MarketPlace",
      "icon": Icons.store_rounded,
      "gradient": const LinearGradient(
        colors: [Colors.blue, Colors.lightBlueAccent],
        begin: Alignment.bottomLeft,
        end: Alignment.topRight,
      ),
    },
    {
      "title": "Find friends",
      "icon": Icons.person_search_rounded,
      "gradient": const LinearGradient(
        colors: [Colors.black, Colors.blue],
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
      ),
    },
    {
      "title": "Feeds",
      "icon": Icons.feed_outlined,
      "gradient": const LinearGradient(
        colors: [Colors.blue, Colors.lightBlueAccent],
        begin: Alignment.bottomLeft,
        end: Alignment.topRight,
      ),
    },
    {
      "title": "Events",
      "icon": Icons.event,
      "gradient": const LinearGradient(
        colors: [Colors.red, Colors.redAccent, Colors.black],
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
      ),
    }
  ];


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(
              Icons.home_outlined,
              size: 35,
            ),
            onPressed: () {},
          ),
          actions: [
            IconButton(
                onPressed: () {},
                icon: const Icon(Icons.ondemand_video_rounded)),
            const SizedBox(
              width: 20,
            ),
            IconButton(
                onPressed: () {}, icon: const Icon(Icons.people_outline)),
            const SizedBox(
              width: 20,
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.storefront_outlined),
            ),
            const SizedBox(
              width: 20,
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.notifications),
            ),
            const SizedBox(
              width: 20,
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.menu_outlined),
            ),
          ],

          iconTheme: const IconThemeData(
            size: 35,
          ),
        ),
        body: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text(
                    "Menu",
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.settings,
                          size: 30,
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.search,
                          size: 30,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                  const CircleAvatar(
                    radius: 40,
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Icon(
                        Icons.person_2,
                        color: Colors.white,
                        size: 80,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Noor Ma",
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "See your profile",
                            style: Theme.of(context).textTheme.titleSmall,
                          ),
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
            const Divider(
              color: Colors.grey,
              height: 1,
              indent: 20,
              endIndent: 20,
            ),
            ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: (cardData.length / 2).ceil(),
                itemBuilder: (context, index) {
                  int firstIndex = index * 2;
                  int secondIndex = firstIndex + 1;

                  return Row(
                    children: [
                      Expanded(
                        child: MyCard(
                            title: cardData[firstIndex]['title'],
                            icon: cardData[firstIndex]['icon'],
                            gradient: cardData[firstIndex]['gradient']),
                      ),
                      if (secondIndex < cardData.length)
                        Expanded(
                          child: MyCard(
                              title: cardData[secondIndex]['title'],
                              icon: cardData[secondIndex]['icon'],
                              gradient: cardData[secondIndex]['gradient']),
                        ),
                      if (secondIndex >= cardData.length)
                        Expanded(
                          child: Container(),
                        ),
                    ],
                  );
                }),
            Expanded(
              child: InkWell(
                onTap: (){
                  print("Clicked See more Button!");
                },
                child: Container(
                  margin: const EdgeInsets.all(10.0),
                  width: double.infinity,
                  height: 40,
                  decoration: BoxDecoration(
                    color: const Color(0xFFe2e5ea),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Center(
                      child: Text(
                    "See more",
                    style: Theme.of(context)
                        .textTheme
                        .titleMedium
                        ?.copyWith(fontSize: 18),
                  )),
                ),
              ),
            ),
            Expanded(
              child: Container(
                child: ListView.builder(
                  shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: 1,
                    itemBuilder: (context,index){
                      return const Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Divider(),
                          MyListTile(icon: Icon(Icons.question_mark_rounded), text:"Help & Support"),
              
                          Divider(),
                          MyListTile(icon: Icon(Icons.settings), text:"Settings & privacy"),
                          Divider(),
                          MyListTile(icon: Icon(Icons.menu), text: "Also From Meta")
              
                        ],
                      );
                    }),
              ),
            ),
            Expanded(
              child: InkWell(
                onTap: (){
                  print("Clicked Log out Button");
                },
                child: Container(
                  margin: const EdgeInsets.all(10.0),
                  width: double.infinity,
                  height: 40,
                  decoration: BoxDecoration(
                    color: const Color(0xFFe2e5ea),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Center(
                      child: Text(
                        "Log Out",
                        style: Theme.of(context)
                            .textTheme
                            .titleMedium
                            ?.copyWith(fontSize: 18),
                      )),
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}

class MyCard extends StatelessWidget {
  const MyCard({
    super.key,
    required this.title,
    required this.icon,
    required this.gradient,
    this.size = 35,
    this.contain,
  });

  final IconData icon;
  final Gradient gradient;
  final String title;
  final double size;
  final Widget? contain;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: 10.0,
        left: 10.0,
      ),
      height: 100,
      child: Card(
          elevation: 5.0,
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GradientIcon(
                  icon: icon,
                  gradient: gradient,
                  size: size,
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  title,
                  style: Theme.of(context)
                      .textTheme
                      .titleMedium
                      ?.copyWith(fontSize: 18),
                )
              ],
            ),
          )),
    );
  }
}

class MyListTile extends StatelessWidget {
  const MyListTile({super.key,required this.icon,required this.text});
  final Widget icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Card(
          color: const Color(0xFFe2e5ea),
          shape: const CircleBorder(),
          child:IconButton(onPressed: (){}, icon: icon,)
      ),
      title: Text(
        text,
        style: Theme.of(context)
            .textTheme
            .titleMedium
            ?.copyWith(fontSize: 18),
      ),
      trailing: IconButton(
          onPressed: () {}, icon: Icon(Icons.keyboard_arrow_down)),
    );
  }
}

