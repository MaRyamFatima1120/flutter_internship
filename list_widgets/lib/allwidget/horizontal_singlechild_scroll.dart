import 'package:flutter/material.dart';
import 'package:list_widgets/allwidget/listview.dart';

class HorizontalSinglechildScroll extends StatefulWidget {
  const HorizontalSinglechildScroll({super.key});

  @override
  State<HorizontalSinglechildScroll> createState() => _HorizontalSinglechildScrollState();
}

class _HorizontalSinglechildScrollState extends State<HorizontalSinglechildScroll> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.teal,
            titleSpacing: 2.0,
            centerTitle: true,
            title: const Text("HorizontalScroll",style: TextStyle(color:Colors.white,),),

            actions: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: IconButton(
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>const MyListView()));
                  },//Anonymous Function
                  icon: const Icon(Icons.arrow_forward_ios_sharp),
                ),
              ),

            ],
            iconTheme:const IconThemeData(
              color: Colors.white,
            ),
          ),
          body: SingleChildScrollView(
           //scrollDirection: Axis.horizontal,
            child: Column(
              mainAxisAlignment:MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: 200,
                          height: 250,
                          decoration: BoxDecoration(
                            color: Colors.deepOrangeAccent,
                            borderRadius: BorderRadius.circular(40.0)

                          ),

                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: 200,
                          height: 250,
                          decoration: BoxDecoration(
                              color: Colors.deepPurpleAccent,
                              borderRadius: BorderRadius.circular(40.0)

                          ),

                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: 200,
                          height: 250,
                          decoration: BoxDecoration(
                              color: Colors.redAccent,
                              borderRadius: BorderRadius.circular(40.0)

                          ),

                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: 200,
                          height: 250,
                          decoration: BoxDecoration(
                              color: Colors.tealAccent,
                              borderRadius: BorderRadius.circular(40.0)

                          ),

                        ),
                      ),

                    ],

                  ),
                ),
                Column(

                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 200,
                        height: 250,
                        decoration: BoxDecoration(
                            color: Colors.deepOrangeAccent,
                            borderRadius: BorderRadius.circular(40.0)

                        ),

                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 200,
                        height: 250,
                        decoration: BoxDecoration(
                            color: Colors.deepPurpleAccent,
                            borderRadius: BorderRadius.circular(40.0)

                        ),

                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 200,
                        height: 250,
                        decoration: BoxDecoration(
                            color: Colors.redAccent,
                            borderRadius: BorderRadius.circular(40.0)

                        ),

                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 200,
                        height: 250,
                        decoration: BoxDecoration(
                            color: Colors.tealAccent,
                            borderRadius: BorderRadius.circular(40.0)

                        ),

                      ),
                    ),

                  ],

                ),


              ],
            ),
          ),
    ));
  }
}
