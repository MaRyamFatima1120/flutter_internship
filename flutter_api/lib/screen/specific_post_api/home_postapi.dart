import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_api/screen/fake_store_api/fake_home_screen.dart';
import 'package:flutter_api/screen/specific_post_api/model/PostCommentModel.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:http/http.dart';

class HomePostApiScreen extends StatefulWidget {
  const HomePostApiScreen({super.key});

  @override
  State<HomePostApiScreen> createState() => _HomePostApiScreenState();
}

class _HomePostApiScreenState extends State<HomePostApiScreen> {
  List<Color> colorList = [
    const Color(0xff3693a4),
    const Color(0xffc65006),
    const Color(0xffb33d26),
    const Color(0xff606263),
    const Color(0xff428227),
  ];
  List<PostCommentModel> list = [];

  Future<List<PostCommentModel>> getAPi() async {
    try {
      final response = await get(
          Uri.parse("https://jsonplaceholder.typicode.com/posts/1/comments"));

      var data = jsonDecode(response.body.toString());
      list.clear();

      if (response.statusCode == 200) {
        for (Map i in data) {
          list.add(PostCommentModel.fromJson(i));
        }
        return list;
      } else {
        return list;
      }
    } catch (e) {
      print("Error:$e");
      return [];
    }
  }

  @override
  Widget build(BuildContext context) {
    var widthSize = MediaQuery.of(context).size.width;
    var heightSize = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff172927),
        automaticallyImplyLeading: false,
        title: Text(
          "Employee API",
          style: Theme.of(context).textTheme.titleMedium,
        ),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>const FakeStoreScreen()));
              },
              icon: const Icon(
                Icons.arrow_forward_ios,
                color: Colors.white,
              )),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: FutureBuilder(
                future: getAPi(),
                builder: (context, snapshot) {
                  if (!snapshot.hasData) {
                    return const Center(
                      child: SpinKitRing(color: Color(0xff172927)),
                    );
                  } else {
                    return ListView.builder(
                      itemCount: list.length,
                      itemBuilder: (context, index) {
                        return Card(
                          margin: const EdgeInsets.all(20.0),
                          child: SizedBox(
                            width: widthSize,
                            height: heightSize * 0.3,
                            child: Column(
                              children: [
                                Row(
                                  // crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            list[index].name.toString(),
                                            style: Theme.of(context)
                                                .textTheme
                                                .titleMedium
                                                ?.copyWith(
                                                  color: Colors.black,
                                                  fontSize: 14,
                                                ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      width: widthSize * 0.1,
                                      height: heightSize * 0.06,
                                      margin: const EdgeInsets.all(10.0),
                                      decoration: BoxDecoration(
                                        color: colorList[index],
                                      ),
                                      child: Center(
                                          child: Text(
                                        list[index].id.toString(),
                                        style: Theme.of(context)
                                            .textTheme
                                            .titleMedium
                                            ?.copyWith(fontSize: 18),
                                      )),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.email_outlined,
                                      color: colorList[index],
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      list[index].email.toString(),
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleMedium
                                          ?.copyWith(
                                              color: Colors.black,
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                    )
                                  ],
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Icon(
                                      Icons.work_outline,
                                      color: colorList[index],
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            list[index].body.toString(),
                                            style: Theme.of(context)
                                                .textTheme
                                                .titleMedium
                                                ?.copyWith(
                                                    color: Colors.black,
                                                    fontSize: 11,
                                                    fontWeight:
                                                        FontWeight.normal),
                                            textAlign: TextAlign.end,
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        );
                      },
                    );
                  }
                }),
          )
        ],
      ),
    );
  }
}
