
import 'package:flutter/material.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text("Project API"),
        centerTitle: true,
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.search),)
        ],
      ),

      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              accountName: Text("Muhammad Arslan"),
                accountEmail: Text("arslandev97@gmail.com"),
              currentAccountPicture: CircleAvatar(
                child: Text("M", style: TextStyle(fontSize: 26,),),
              ),
            ),

            ListTile(
              onTap: (){},
              leading: Icon(Icons.home),
              title: Text("Home"),
            ),

            ListTile(
              onTap: (){},
              leading: Icon(Icons.photo),
              title: Text("Photos"),
            ),


            ListTile(
              onTap: (){},
              leading: Icon(Icons.email),
              title: Text("Email"),
            ),


            ListTile(
              onTap: (){},
              leading: Icon(Icons.person),
              title: Text("Profile"),
            ),

            ListTile(
              onTap: (){},
              leading: Icon(Icons.settings),
              title: Text("Settings"),
            ),

            const Divider(),


            ListTile(
              onTap: (){},
              leading: Icon(Icons.info),
              title: Text("About"),
            ),

            const SizedBox(
              height: 200,
            ),

            const Center(
              child: Text(
                "Developed By \nMuhammad Arslan",
                textAlign: TextAlign.center,
              ),
            ),
            
          ],
        ),
      ),

    );
  }
}






