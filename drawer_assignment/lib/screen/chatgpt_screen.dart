import 'package:drawer_assignment/screen/email_screen.dart';
import 'package:flutter/material.dart';

class ChatgptScreen extends StatefulWidget {
  const ChatgptScreen({super.key});

  @override
  State<ChatgptScreen> createState() => _ChatgptScreenState();
}

class _ChatgptScreenState extends State<ChatgptScreen> {
  var scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: const Color(0xff080808),
        appBar: AppBar(
          backgroundColor: const Color(0xff080808),
          leading: IconButton(
            onPressed: () {
              scaffoldKey.currentState!.openDrawer();
            },
            icon: const Icon(Icons.short_text, color: Colors.white),
          ),
          actions: [
            IconButton(
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder:(context)=> const EmailScreen()));

              },
             icon:const Icon( Icons.arrow_forward_ios,color: Colors.white,),)
          ],
        ),
        drawer: Drawer(
            backgroundColor: const Color(0xff0d0d0d),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SearchAnchor(
                    builder:
                        (BuildContext context, SearchController controller) {
                      return SearchBar(

                        controller: controller,
                        padding: const WidgetStatePropertyAll<EdgeInsets>(
                            EdgeInsets.symmetric(horizontal: 20.0,vertical: 10)),
                        onTap: () {
                          controller.openView();
                        },
                        onChanged: (_) {
                          controller.openView();
                        },
                        hintText: 'Search',
                        hintStyle: WidgetStateProperty.all(const TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        )),
                        leading: const Icon(Icons.search, color: Colors.white,size: 30,),
                        backgroundColor:
                        WidgetStateProperty.all(const Color(0xff242424)),
                      );
                    },
                    suggestionsBuilder:
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
                    },
                  ),
                ),
                Expanded(child:
                ListView(
                  children: [
                    ListTile(
                      leading:Container(
                        height: 30,
                        width: 30,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                          image: DecorationImage(image: AssetImage(
                            "assets/images/logo.png"
                          ))
                        ),
                      ),
                      title: const Text("ChatGPT",style: TextStyle(fontSize: 16,color: Colors.white),),
                    ),
                    const ListTile(
                      leading:Icon(Icons.grid_view,color: Colors.white,),
                      title: Text("Explore GPTs",style: TextStyle(fontSize: 16,color: Colors.white),),
                    ),
                    const Divider(),
                    const Padding(
                      padding: EdgeInsets.all(12.0),
                      child: Text("Previous 30 days",style: TextStyle(
                        fontSize: 16,color: Colors.white,
                      ),),

                    ),
                    const ListTile(
                      title: Text("New chat",style: TextStyle(fontSize: 18,color: Colors.white,fontWeight: FontWeight.w500),),
                    ),
                    const Divider(),
                    const ListTile(
                      title: Text("July",style: TextStyle(fontSize: 14,color: Colors.white,fontWeight: FontWeight.w500),),
                    ),
                    const ListTile(
                      title: Text("Flex Canva Available",style: TextStyle(fontSize: 18,color: Colors.white,fontWeight: FontWeight.w500),),
                    ),
                    const ListTile(
                      title: Text("User Request Summarized",style: TextStyle(fontSize: 18,color: Colors.white,fontWeight: FontWeight.w500),),
                    ),
                    const ListTile(
                      title: Text("Ideas Content VlogStudy",style: TextStyle(fontSize: 18,color: Colors.white,fontWeight: FontWeight.w500),),
                    ),
                    Divider(),
                    const ListTile(
                      title: Text("June",style: TextStyle(fontSize: 14,color: Colors.white,fontWeight: FontWeight.w500),),
                    ),
                    const ListTile(
                      title: Text("New Chat",style: TextStyle(fontSize: 18,color: Colors.white,fontWeight: FontWeight.w500),),
                    ),
                    const ListTile(
                      title: Text("Alpha's Good.User Well.",style: TextStyle(fontSize: 18,color: Colors.white,fontWeight: FontWeight.w500),),
                    ),

                  ],
                )),
                const ListTile(
                  leading: Icon(Icons.account_circle_outlined,color: Colors.white,),
                  title:Text("maryam noor",style: TextStyle(fontSize: 18,color: Colors.white,fontWeight: FontWeight.w500),),
                  trailing: Icon(Icons.more_horiz_sharp,color: Colors.white,),
                ),

              ],
            )),
      ),
    );
  }
}
