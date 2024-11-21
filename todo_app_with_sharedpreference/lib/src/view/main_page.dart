import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:todo_app_with_sharedpreference/common/constants/global_variable.dart';
import 'package:todo_app_with_sharedpreference/src/view/home/home_page.dart';

import '../../common/constants/app_icon.dart';
import '../view-model/main_controller.dart';
import 'home/task_view.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final MainController controller = Get.put(MainController());

  final List<Widget> _pages = [
    const Homepage(),
    const TaskView(),
    const Center(
      child: Text("Profile Page"),
    ),
    const Center(
      child: Text("Inbox Page"),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    print("Current Selected Index: ${controller.selectedIndex.value}");
    print("Color Scheme: ${colorScheme(context)}");

    return Scaffold(

      body: Obx(() => _pages[controller.selectedIndex.value]),
      floatingActionButton: FloatingActionButton(
        elevation: 2.0,
        shape: const CircleBorder(),
        onPressed: (){
          try{
            Get.bottomSheet(
              MyBottomSheet(),
              isDismissible: true, // Allow dismissing by tapping outside
              enableDrag: true, // Allow dragging to dismiss
            );
          }
          catch(e){
            print("\n Find Error:$e");
          }
        },

        child:const Icon(
          Icons.add,
          size: 20,
          color: Colors.white,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: Obx(()=>BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          //backgroundColor: colorScheme(context).secondary,
          currentIndex: controller.selectedIndex.value,
         // unselectedItemColor: colorScheme(context).onSecondary.withOpacity(0.8),
          //selectedItemColor: colorScheme(context).primary,
          showUnselectedLabels: false,
          showSelectedLabels: false,
          iconSize: 40,
          onTap: controller.onItemTap,
          items: [
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                AppIcon.homeIcon,
                width: 30,
                height: 30,
                colorFilter: ColorFilter.mode(controller.selectedIndex.value == 0 ?colorScheme(context).primary ?? Colors.blue:colorScheme(context).onSecondary.withOpacity (0.6)?? Colors.grey, BlendMode.srcIn),
              ),
              label: "",


            ),
            BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  AppIcon.workIcon,
                  width: 30,
                  height: 30,
                  colorFilter: ColorFilter.mode(controller.selectedIndex.value == 1 ?colorScheme(context).primary:colorScheme(context).onSecondary.withOpacity(0.6), BlendMode.srcIn),
                ),
                label: ""),
            BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  AppIcon.profileIcon,
                  width: 30,
                  height: 30,
                  colorFilter: ColorFilter.mode(controller.selectedIndex.value == 2 ?colorScheme(context).primary:colorScheme(context).onSecondary.withOpacity(0.6), BlendMode.srcIn),
                ),
                label: ""),
            BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  AppIcon.settingIcon,
                  width: 30,
                  height: 30,
                  colorFilter: ColorFilter.mode(controller.selectedIndex.value == 3 ?colorScheme(context).primary:colorScheme(context).onSecondary.withOpacity(0.6), BlendMode.srcIn),

                ),
                label: ""),
          ])),
    );
  }

}


class MyBottomSheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(top: Radius.circular(16.0)),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'My Bottom Sheet',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 20),
          Text('This is a bottom sheet example.'),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              Get.back(); // Close the bottom sheet
            },
            child: Text('Close'),
          ),
        ],
      ),
    );
  }
}