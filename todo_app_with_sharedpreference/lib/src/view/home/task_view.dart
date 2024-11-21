import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';
import 'package:go_router/go_router.dart';
import 'package:todo_app_with_sharedpreference/common/constants/media_query_extension.dart';
import '../../../common/constants/app_color.dart';
import '../../../common/constants/global_variable.dart';
import '../../../common/constants/validation.dart';
import '../../../common/widgets/custom_button.dart';
import '../../../common/widgets/custom_filter_chip.dart';
import '../../../common/widgets/custom_textform.dart';
import '../../routes/go_route.dart';
import '../../view-model/home_controller.dart';

class TaskView extends StatefulWidget {
  const TaskView({super.key});

  @override
  State<TaskView> createState() => _TaskViewState();
}

class _TaskViewState extends State<TaskView> {
  var scaffoldKey = GlobalKey<ScaffoldState>();
  final HomeController controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: const Color(0xffecf6ff),
          key: scaffoldKey,
          drawer: const Drawer(),
          body: Flex(
            direction: Axis.vertical,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 20.0, vertical: 5.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        IconButton(
                          onPressed: () {
                            scaffoldKey.currentState!.openDrawer();
                          },
                          icon: const Icon(Icons.short_text),
                        ),
                        SizedBox(
                          width: MediaQueryExtension(context).width() * 0.6,
                        ),
                        CircleAvatar(
                            radius: 30,
                            backgroundColor: colorScheme(context).onSecondary,
                            backgroundImage:
                                const AssetImage("assets/images/image.jpg")),
                      ],
                    ),
                    SizedBox(
                      height: MediaQueryExtension(context).height() * 0.01,
                    ),
                    Text(
                      "My Task",
                      style: textTheme(context)
                          .bodyLarge
                          ?.copyWith(fontWeight: FontWeight.bold),
                    ),
                    SearchBar(
                      padding: WidgetStateProperty.all(
                          const EdgeInsets.symmetric(
                              vertical: 10.0, horizontal: 16.0)),
                      shape: WidgetStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        // Border color
                      )),
                      hintText: "Search...",
                      hintStyle: WidgetStateProperty.all(
                          textTheme(context).bodySmall),
                      backgroundColor: WidgetStateProperty.all(
                          colorScheme(context).secondary),
                      leading: const Icon(Icons.search),
                      onChanged: controller.onChangedFunction,
                      textStyle: WidgetStateProperty.all(
                          textTheme(context).bodySmall),
                    ),
                    Padding(
                      padding: EdgeInsets.all(
                          MediaQueryExtension(context).height() * 0.02),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            Wrap(
                              spacing: 10.0,
                              runSpacing: 10.0,
                              children: [
                                FilterChipWidget(
                                  chipName: 'Recently Add',
                                  onSelectedFilter: (String? type) {
                                    controller.applyFilterType('recent');
                                  },
                                ),
                                FilterChipWidget(
                                  chipName: 'Pending',
                                  onSelectedFilter: (String? type) {
                                    controller.applyFilterType('pending');
                                  },
                                ),
                                FilterChipWidget(
                                  chipName: 'Completed',
                                  onSelectedFilter: (String? type) {
                                    controller.applyFilterType('completed');
                                  },
                                ),
                                FilterChipWidget(
                                  chipName: 'All',
                                  onSelectedFilter: (String? type) {
                                    controller.applyFilterType(null);
                                  },
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Flexible(
                fit: FlexFit.loose,
                flex: 3,
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 10.0),
                  //color: Colors.pink,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Flex(
                      direction: Axis.vertical,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: MediaQueryExtension(context).height() * 0.25,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: 3,
                            itemBuilder: (BuildContext context, int index) {
                              return SizedBox(
                                width:
                                    MediaQueryExtension(context).width() * 0.45,
                                height: MediaQueryExtension(context).height() *
                                    0.25,
                                child: Card(
                                  color: AppColor.blueColor,
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Make an App Design for travel",
                                          style: textTheme(context)
                                              .bodySmall
                                              ?.copyWith(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 18,
                                                color: Colors.white,
                                              ),
                                        ),
                                        Text(
                                          "My Task",
                                          style: textTheme(context)
                                              .bodySmall
                                              ?.copyWith(
                                                fontWeight: FontWeight.bold,
                                                color: Colors.white,
                                              ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          )),
    );
  }
}
