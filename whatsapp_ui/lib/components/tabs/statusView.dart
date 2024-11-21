
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StatusView extends StatefulWidget {
  const StatusView({super.key});

  @override
  State<StatusView> createState() => _StatusViewState();
}

class _StatusViewState extends State<StatusView> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [

        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 30.0),
          child: Text("Status", style: GoogleFonts.poppins(
            textStyle: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 28,
            ),
          ),),
        ),

        ListTile(
          leading: CircleAvatar(
            backgroundColor: Colors.teal,
            radius: 40,
          ),
          title: Text("My Status"),
          subtitle: Text("Tap to add status update"),
        ),


        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 30.0),
          child: Text("Recent updates", style: GoogleFonts.poppins(
            textStyle: TextStyle(
              fontSize: 18,
            ),
          ),),
        ),

        Expanded(
          child: ListView.builder(
            itemCount: 20,
            itemBuilder: (context, index){
              return ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.teal,
                  radius: 40,
                ),
                title: Text("My Status"),
                subtitle: Text("20 minutes ago"),
              );
            },
          ),
        ),



      ],
    );
  }
}



