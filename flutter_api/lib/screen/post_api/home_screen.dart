import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_api/screen/post_api/model/post_model.dart';
import 'package:flutter_api/screen/specific_post_api/home_postapi.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:http/http.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<PostModel> postList = [];

  Future<List<PostModel>> getApi() async {
    final response =
        await get(Uri.parse("https://jsonplaceholder.typicode.com/posts"));
    var data = jsonDecode(response.body.toString());

    postList.clear();

    if (response.statusCode == 200) {
      for (Map i in data) {
        postList.add(PostModel.fromJson(i));
      }
      return postList;
    } else {
      return postList;
    }
  }

  @override
  Widget build(BuildContext context) {
    var widthSize = MediaQuery.of(context).size.width;
    var widthHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
       automaticallyImplyLeading: false,
        backgroundColor: const Color(0xff172927),
        title: Text(
          "User API",
          style: Theme.of(context).textTheme.titleMedium,
        ),
        actions: [
          IconButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>const HomePostApiScreen()));
          }, icon: const Icon(Icons.arrow_forward_ios,color: Colors.white,)),

        ],
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: Column(
        children: [
          Expanded(
              child: FutureBuilder(
                  future: getApi(),
                  builder: (context, snapshot) {
                    if (!snapshot.hasData) {
                      return const Center(
                        child: SpinKitRing(color: Color(0xff172927)),
                      );
                    } else {
                      return ListView.builder(
                          itemCount: postList.length,
                          itemBuilder: (context, index) {
                            return Container(
                              margin: const EdgeInsets.all(10.0),
                              padding: const EdgeInsets.all(10.0),
                              width: widthSize,
                              height: widthHeight * 0.25,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20.0),
                                border: Border.all(
                                  color: const Color(0xfff79f01),
                                  width: 2,
                                ),
                                boxShadow: const [
                                  BoxShadow(
                                      color: Color(0xffd7dcdd),
                                      blurRadius: 2.0,
                                      spreadRadius: 4.0)
                                ],
                              ),
                              child: SingleChildScrollView(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          width: widthSize * 0.07,
                                          height: widthHeight * 0.06,
                                          margin: const EdgeInsets.all(10.0),
                                          decoration: const BoxDecoration(
                                            color: Color(0xff172927),
                                          ),
                                          child: Center(
                                              child: Text(
                                            postList[index].userId.toString(),
                                            style: Theme.of(context)
                                                .textTheme
                                                .titleMedium
                                                ?.copyWith(fontSize: 18),
                                          )),
                                        ),
                                        SizedBox(
                                          width: widthSize * 0.01,
                                        ),
                                        Container(
                                          width: widthSize * 0.07,
                                          height: widthHeight * 0.04,
                                          decoration: BoxDecoration(
                                              color: const Color(0xfff79f01),
                                              borderRadius:
                                                  BorderRadius.circular(100.0)),
                                          child: Center(
                                              child: Text(
                                            postList[index].id.toString(),
                                            style: Theme.of(context)
                                                .textTheme
                                                .titleMedium
                                                ?.copyWith(fontSize: 18),
                                          )),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: widthHeight * 0.01,
                                    ),
                                    Container(
                                      width: widthSize * 0.2,
                                      height: widthHeight * 0.04,
                                      decoration: BoxDecoration(
                                        color: const Color(0xfff79f01),
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                      ),
                                      child: Center(
                                        child: Text(
                                          "Title",
                                          style: Theme.of(context)
                                              .textTheme
                                              .titleMedium
                                              ?.copyWith(
                                                fontSize: 18,
                                              ),
                                        ),
                                      ),
                                    ),
                                    Text(
                                      postList[index].title.toString(),
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleMedium
                                          ?.copyWith(
                                              fontSize: 16,
                                              color: Colors.black),
                                      textAlign: TextAlign.center,
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Container(
                                      width: widthSize * 0.4,
                                      height: widthHeight * 0.04,
                                      decoration: BoxDecoration(
                                        color: const Color(0xff172927),
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                      ),
                                      child: Center(
                                        child: Text(
                                          "Description",
                                          style: Theme.of(context)
                                              .textTheme
                                              .titleMedium
                                              ?.copyWith(
                                                fontSize: 18,
                                              ),
                                        ),
                                      ),
                                    ),
                                    Text(
                                      postList[index].body.toString(),
                                      style: const TextStyle(
                                        fontSize: 14,
                                        color: Colors.black,
                                      ),
                                      textAlign: TextAlign.justify,
                                    ),
                                  ],
                                ),
                              ),
                            );
                          });
                    }
                  }))
        ],
      ),
    );
  }
}
