import 'package:flutter/material.dart';
import 'package:list_widgets/allwidget/whatsapp_channel.dart';

class MyListviewBuilder extends StatefulWidget {
  const MyListviewBuilder({super.key});

  @override
  State<MyListviewBuilder> createState() => _MyListviewBuilderState();
}

class _MyListviewBuilderState extends State<MyListviewBuilder> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          backgroundColor: Colors.black,
          appBar: AppBar(
            backgroundColor: Colors.teal,
            titleSpacing: 2.0,
            centerTitle: true,
            title: const Text("ListView With Builder",style: TextStyle(color:Colors.white,),),

            actions: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: IconButton(
                  onPressed: (){
                   Navigator.push(context, MaterialPageRoute(builder: (context)=>const Channel()));
                  },//Anonymous Function
                  icon: const Icon(Icons.arrow_forward_ios_sharp),
                ),
              ),

            ],
            iconTheme:const IconThemeData(
              color: Colors.white,
            ),
          ),
          body: ListView.builder(
            itemCount: 100,
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                onTap: (){
                  print("List Tile Tapped!");

                },

                onLongPress: (){
                  print("Long Tapped");
                },//Anonymous Function
                leading:const CircleAvatar(
                  backgroundColor: Colors.red,
                  radius: 30,
                  backgroundImage: AssetImage(
                      "assets/images/person3.png"
                  ),
                ),
                title:const Text("Munawar Ahmad",style: TextStyle(fontSize: 16,color: Colors.white),),
                subtitle:const Text("Hello,I am Munawar Ahmad.",style: TextStyle(color: Colors.white),),
                trailing:Wrap(
                  spacing: 6,
                  children: [
                    IconButton(onPressed: (){}, icon:const Icon(Icons.call)),
                    IconButton(onPressed: (){}, icon:const Icon(Icons.message)),
                  ],
                ),
                iconColor: Colors.white,
                tileColor:Colors.black12,

              );

            },

          ),
    ));
  }
}
