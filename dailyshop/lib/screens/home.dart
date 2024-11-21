import 'package:dailyshop/screens/login.dart';
import 'package:flutter/material.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,

        children: [

          Center(
            child: InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => const LoginScreen()));
              },
              child: Container(
                height: 50,
                width: 300,
                decoration: BoxDecoration(
                  color: Colors.deepPurple,
                  borderRadius: BorderRadius.circular(30.0),
                   boxShadow: [
                     BoxShadow(
                       color: Colors.grey.withOpacity(0.6),
                       spreadRadius: 4.0,
                       blurRadius: 4.0,
                       offset: const Offset(2.0, 2.0),
                     )
                   ],
                ),
                child: const Center(
                  child: Text(
                    "Login Here",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                    ),
                  ),
                ),
              ),
            ),
          ),

        ],
      ),
    );
  }
}



