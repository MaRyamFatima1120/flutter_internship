import 'package:assignment_2_practice/views/sixth_layout_with_container.dart';
import 'package:flutter/material.dart';

class FifthScreen extends StatefulWidget {
  const FifthScreen({super.key});

  @override
  State<FifthScreen> createState() => _FifthScreenState();
}

class _FifthScreenState extends State<FifthScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
       body:Column(

         mainAxisAlignment: MainAxisAlignment.start,
         children: [
           const SizedBox(height:30,),
           Row(
             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
             children: [
               const CircleAvatar(
                 backgroundColor: Color(0xFFe3e6f1),
                 radius: 70,
                 child: Icon(Icons.person,size: 80,color: Color(0xFFa5abb7),),
               ),
               Column(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                   const Text("YOUR NAME",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
                   Text("App Developer".toUpperCase(),style: const TextStyle(fontSize: 20,fontWeight: FontWeight.w400),),
                 ],
               )
             ],
           ),
           const SizedBox(height:30,),
           Row(
             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
             children: [
               const Icon(Icons.location_city,size: 50,),
               Text("SCHOOL NAME, CITY".toUpperCase(),style: const TextStyle(fontSize: 25,fontWeight: FontWeight.w400),),
                 ],
               ),
           const SizedBox(height:30,),
           Row(
             mainAxisAlignment: MainAxisAlignment.start,
             children: [
               const SizedBox(width:30,),
               const Icon(Icons.file_copy,size: 50,),
               const SizedBox(width:35,),
               Text("Any Projects".toUpperCase(),style: const TextStyle(fontSize: 25,fontWeight: FontWeight.w400),),
             ],
           ),
           const SizedBox(height:30,),
           Row(
             mainAxisAlignment: MainAxisAlignment.start,
             children: [
               const SizedBox(width:30,),
               const Icon(Icons.location_on_rounded,size: 50,),
               const SizedBox(width:35,),
               Text("My Location".toUpperCase(),style: const TextStyle(fontSize: 25,fontWeight: FontWeight.w400),),
             ],
           ),
           const SizedBox(height:30,),
           Row(
             mainAxisAlignment: MainAxisAlignment.start,
             children: [
               const SizedBox(width:30,),
               const Icon(Icons.email,size: 50,),
               const SizedBox(width:35,),
               Text("fatimamaryam882@gmail.com".toUpperCase(),style: const TextStyle(fontSize: 15,fontWeight: FontWeight.w400),),
             ],
           ),
           const SizedBox(height:30,),
           Row(
             mainAxisAlignment: MainAxisAlignment.start,
             children: [
               const SizedBox(width:30,),
               const Icon(Icons.call,size: 50,),
               const SizedBox(width:35,),
               Text("+92 3148888930".toUpperCase(),style: const TextStyle(fontSize: 15,fontWeight: FontWeight.w400),),
             ],
           ),
           const SizedBox(height:30,),
           Text("Lorem Ipsum is simply dummy text of "
               "\nthe printing and typesetting industry. "
               "\nLorem Ipsum has been the industry'",
           textAlign: TextAlign.center,
           ),
           const SizedBox(height:30,),
           const Row(
             mainAxisAlignment: MainAxisAlignment.center,
             children: [
               Text("Created By You",style: TextStyle(fontSize: 18),)
             ],
           ),
           IconButton(onPressed: (){
             Navigator.push(context, MaterialPageRoute(builder: (context)=>SixthScreen()));
           }, icon: const Icon(Icons.arrow_forward)),

             ],
           ),

       ),
      );
  }
}
