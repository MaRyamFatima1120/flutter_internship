import 'package:flutter/material.dart';
import 'package:form_design/screen/login_screen.dart';
import 'package:form_design/screen/sign_up_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Container(
              height:screenHeight * 0.3,
              width: screenWidth * 0.8,
              margin:EdgeInsets.only(
                top: screenHeight * 0.1,
              ),
              decoration:const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                  "assets/images/bg1.png"
                )),
              ),
            ),
          ),
          SizedBox(height: screenHeight * 0.03,),
          Expanded(
            flex:2,
            child: Column(
              children: [
                Center(child: Text("Welcome To",style: Theme.of(context).textTheme.titleMedium,)),
                Center(child: Text("Create an account and access thousands",style: Theme.of(context).textTheme.titleSmall,)),
                Center(child: Text("of cool suttfs",style: Theme.of(context).textTheme.titleSmall,)),
                SizedBox(height: screenHeight * 0.02,),
                InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>const SignUpScreen()));
                  },
                  child: Container(
                    margin: const EdgeInsets.all(30.0),
                    width: double.infinity,
                    height: screenHeight * 0.08,
                    decoration: BoxDecoration(
                        color:const Color(0xff0d4a8d),
                        borderRadius: BorderRadius.circular(10.0)
                    ),
                    child: const Center(
                      child: Text("Get Started",style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.w500,
                      ),),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Do you have an account?",style: Theme.of(context).textTheme.titleSmall,),
                    TextButton(
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>const LoginScreen()));
                        },
                        child: Text("Log in",style: Theme.of(context).textTheme.titleSmall?.copyWith(fontWeight: FontWeight.bold,color: Colors.black),)),

                  ],
                )

              ],
            ),
          ),



        ],
      )

    );
  }
}
