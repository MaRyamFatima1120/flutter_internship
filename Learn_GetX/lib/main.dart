import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learn_getx/view/sharedpreference_screen/home_screen.dart';
import 'package:learn_getx/view/sharedpreference_screen/loading_screen.dart';
import 'package:learn_getx/view/sharedpreference_screen/login_screen.dart';
import 'package:learn_getx/view/sharedpreference_screen/show_list_screen.dart';

// import 'package:learn_getx/view/sharedpreference_screen/login_screen.dart';
// import 'package:learn_getx/view/snack_bar_with_get.dart';
// import 'package:learn_getx/view/user_form_sccreen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      initialRoute: '/',
      routes: {
        // '/':(context)=> const SnackBarWithGet(),
        // '/second':(context)=> const UserFormScreen(),
        // '/third':(context)=>const LoginScreen(),
         '/':(context)=> const LoadingScreen(),
        '/second':(context)=>const LoginScreen(),
        '/third':(context)=>const HomeScreen(),
        '/fourth':(context)=>const DisplayProduct(),
      },
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        textTheme:const TextTheme(
          titleMedium:TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w700,
            color: Colors.white
        ),
          titleSmall: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w400,
            color: Colors.white,
          )
        )
      ),
    );
  }
}

