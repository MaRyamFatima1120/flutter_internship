import 'package:flutter/material.dart';
import 'package:flutter_shared_preferences/view/multi_role_base_app/registration/login_screen.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AdminScreen extends StatefulWidget {
  const AdminScreen({super.key});

  @override
  State<AdminScreen> createState() => _AdminScreenState();
}

class _AdminScreenState extends State<AdminScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: const Color(0xff1d242d),
        title: Text("Admin",style: GoogleFonts.inter(
            color: Colors.white
        ),),
        actions: [
          IconButton(onPressed: ()async{
            SharedPreferences sp =await SharedPreferences.getInstance();
            sp.clear();
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>const LoginScreen()));
          }, icon:const Icon(Icons.logout),color: Colors.white,)
        ],
      ),
    );
  }
}
