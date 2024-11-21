

import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_ui_design/view/splash_screen.dart';
import 'package:whatsapp_ui_design/widgets/mystack.dart';


late List<CameraDescription> cameras;
Future<void> main() async{
  WidgetsFlutterBinding.ensureInitialized();
  cameras = await availableCameras();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Whatsapp UI',
      theme: ThemeData(
        textTheme:const TextTheme(
          titleMedium: TextStyle(
            fontSize: 20,
            color:Color(0xff4e4f54),
          ),
          titleLarge: TextStyle(
            fontSize: 20,
            color:Color(0xffe3e3e4),
            fontWeight: FontWeight.bold,
            letterSpacing: 2,
          ),
        ),
         brightness: Brightness.dark,
        useMaterial3: true,
      ),

      home:const SplashScreen(),
    );
  }
}
