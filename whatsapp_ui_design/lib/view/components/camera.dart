/*
*
* import 'package:camera/camera.dart';
import 'package:flutter/material.dart';

import '../../main.dart';


/// CameraApp is the Main Application.
class CameraApp extends StatefulWidget {
  const CameraApp({super.key});

  @override
  State<CameraApp> createState() => _CameraAppState();
}

class _CameraAppState extends State<CameraApp> {
  late CameraController _controller;
  late Future<void> _initializeControllerFuture;

  @override
  void initState() {
    super.initState();

    if (cameras.isNotEmpty) {
      _controller = CameraController(cameras[0], ResolutionPreset.max);
      _initializeControllerFuture = _controller.initialize().catchError((error){
        print("Camera initialized Error:$error");
        return null;
      });
    }
    else{
      print("No Camera Available");
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if(cameras.isEmpty){
      return const Scaffold(
        body: Center(
          child: Text("No cameras available"),
        ),
      );
    }
    return Scaffold(
      body: Stack(
        children: [
          FutureBuilder<void>(
            future: _initializeControllerFuture,
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.done) {
                return SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height,
                    child: CameraPreview(_controller));
              } else if (snapshot.hasError) {
                return Center(child: Text('Error: ${snapshot.error}'));
              } else {
                return const Center(child: CircularProgressIndicator());
              }
            },
          ),

          Positioned(
            bottom: 0.0,
            child: Container(
              width: MediaQuery.of(context).size.width,
              color:Colors.black,
              padding:const EdgeInsets.only(top: 5,bottom: 10),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      InkWell(
                          onTap:(){},
                          child:const Icon(
                            Icons.flash_off,
                            color: Colors.white,
                            size: 30,
                          )
                      ),
                      IconButton(onPressed: (){}, icon: const Icon(
                        Icons.panorama_fish_eye,
                        color: Colors.white,
                        size: 70,
                      )),
                      IconButton(onPressed: (){}, icon:const Icon(Icons.flip_camera_ios,color: Colors.white,size: 30,))
                    ],),
                  Text("Hold for Video,tap for photo",style: Theme.of(context).textTheme.titleLarge?.copyWith(
                      fontWeight: FontWeight.w600,
                      fontSize: 12
                  ),
                  ),


                ],
              ),
            ),
          )

        ],
      ),
    );
  }
}
*/