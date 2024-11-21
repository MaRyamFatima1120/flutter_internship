import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';
import 'package:todo_app_with_sharedpreference/common/constants/app_color.dart';
import 'package:todo_app_with_sharedpreference/common/constants/global_variable.dart';
import 'package:todo_app_with_sharedpreference/common/constants/media_query_extension.dart';
import 'package:todo_app_with_sharedpreference/common/widgets/custom_button.dart';
import 'package:todo_app_with_sharedpreference/src/routes/go_route.dart';
import 'package:todo_app_with_sharedpreference/src/view-model/home_controller.dart';

import '../../../common/constants/validation.dart';
import '../../../common/widgets/custom_filter_chip.dart';
import '../../../common/widgets/custom_textform.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  var scaffoldKey = GlobalKey<ScaffoldState>();
  final HomeController controller = Get.put(HomeController());
  final TextEditingController titleController = TextEditingController();
  final TextEditingController descriptionController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(

          key: scaffoldKey,
          drawer: const Drawer(),
          body: Flex(
            direction: Axis.vertical,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                  decoration: const BoxDecoration(
                    // color: Colors.pink,
                      image: DecorationImage(image: AssetImage("assets/images/bg.png"),fit:BoxFit.cover),

              ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 10.0),
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
                          SizedBox(width: MediaQueryExtension(context).width()* 0.6,),
                          CircleAvatar(
                            radius: 30,
                            backgroundColor: colorScheme(context).onSecondary,
                            backgroundImage: const AssetImage("assets/images/image.jpg")
                          ),
                        ],
                      ),
                      SizedBox(height: MediaQueryExtension(context).height() * 0.01,),
                      Text("Hi,Rian Anderson",style: textTheme(context).bodyLarge?.copyWith(
                        fontWeight: FontWeight.bold
                      ),),
                      Text("Finish your all tasks",style: textTheme(context).bodySmall?.copyWith(
                          fontWeight: FontWeight.bold,
                        color: colorScheme(context).onSecondary.withOpacity(0.7)
                      ),),
                      SizedBox(height: MediaQueryExtension(context).height() * 0.04,),
                      SearchBar(
                        padding: WidgetStateProperty.all(const EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 16.0)),
                        shape: WidgetStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          // Border color
                        )),
                        hintText: "Search...",
                        hintStyle:
                        WidgetStateProperty.all(textTheme(context).bodySmall),
                        backgroundColor:
                        WidgetStateProperty.all(colorScheme(context).secondary),
                        leading: const Icon(Icons.search),
                        onChanged: controller.onChangedFunction,
                        textStyle:
                        WidgetStateProperty.all(textTheme(context).bodySmall),
                      ),
                      SizedBox(height: MediaQueryExtension(context).height() * 0.06,),
                    ],
                  ),
                ),
              ),
              Flexible(
                fit: FlexFit.loose,
                flex: 3,
                child: Container(
                  margin:const EdgeInsets.all(10.0),
                  //color: Colors.pink,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Flex(
                        direction: Axis.vertical,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment:  MainAxisAlignment.spaceBetween,
                          children: [
                            Text("My Task",style: textTheme(context).bodySmall?.copyWith(
                                fontWeight: FontWeight.bold,
                              fontSize: 18
                            ),),
                            TextButton(onPressed: (){
                              context.pushNamed(AppRoute.taskPage);
                            }, child:Text("View All",style: textTheme(context).bodySmall?.copyWith(
                                fontWeight: FontWeight.bold,
                              color:AppColor.orangeColor,
                            ),), )
                          ],
                        ),
                        const SizedBox(height: 5,),
                        SizedBox(
                          height: MediaQueryExtension(context).height() * 0.25,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,

                            itemCount: 3,
                            itemBuilder: (BuildContext context, int index) {
                              return SizedBox(
                                width:MediaQueryExtension(context).width() * 0.45,
                                height: MediaQueryExtension(context).height() * 0.25,
                               child: Card(
                                 color: AppColor.blueColor,
                                 child: Padding(
                                   padding: const EdgeInsets.all(8.0),
                                   child: Column(
                                     mainAxisAlignment: MainAxisAlignment.spaceAround,
                                     crossAxisAlignment: CrossAxisAlignment.start,
                                     children: [
                                       Text("Make an App Design for travel",style: textTheme(context).bodySmall?.copyWith(
                                           fontWeight: FontWeight.bold,
                                           fontSize: 18,
                                         color: Colors.white,
                                       ),),
                                       Text("My Task",style: textTheme(context).bodySmall?.copyWith(
                                           fontWeight: FontWeight.bold,

                                         color: Colors.white,
                                       ),),
                                     ],
                                   ),
                                 ),

                               ),

                              );
                            },),
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
