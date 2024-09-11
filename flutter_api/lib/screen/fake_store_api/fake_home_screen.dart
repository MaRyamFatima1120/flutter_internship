import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_api/screen/fake_store_api/model/FakeStoreModel.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:http/http.dart';

class FakeStoreScreen extends StatefulWidget {
  const FakeStoreScreen({super.key});

  @override
  State<FakeStoreScreen> createState() => _FakeStoreScreenState();
}

class _FakeStoreScreenState extends State<FakeStoreScreen> {
  List<FakeStoreModel> fakeStoreList = [];

  Future<List<FakeStoreModel>> getAPi() async {
    try {
      final response = await get(
          Uri.parse("https://fakestoreapi.com/products"));

      var data = jsonDecode(response.body.toString());
      fakeStoreList.clear();

      if (response.statusCode == 200) {
        for (Map i in data) {
          fakeStoreList.add(FakeStoreModel.fromJson(i));
        }
        return fakeStoreList;
      } else {
        return fakeStoreList;
      }
    } catch (e) {
      print("Error:$e");
      return [];
    }
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: const Color(0xff802c6e),
          title: Text(
            "Product API",
            style: Theme.of(context).textTheme.titleMedium,
          ),
          actions: [
            IconButton(
                onPressed: () {
                },
                icon: const Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.white,
                )),
          ],
        ),
        body:Column(
          children: [
            Expanded(
              child:FutureBuilder(future: getAPi(),
                  builder: (context,snapshot){
                  if(!snapshot.hasData){
                    return const Center(
                      child: SpinKitRing(color: Color(0xff172927)),
                    );


                  }
                  else{
                    return ListView.builder(
                      itemCount: fakeStoreList.length,
                      itemBuilder: (context, index) {
                        var widthSize = MediaQuery.of(context).size.width;
                        var heightSize = MediaQuery.of(context).size.height;
                        return Card(
                          margin: const EdgeInsets.all(20.0),
                          child: SizedBox(
                            width: widthSize,
                            height: heightSize * 0.3,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children:[
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        fakeStoreList[index].title.toString(),
                                        style: Theme.of(context)
                                            .textTheme
                                            .titleMedium
                                            ?.copyWith(
                                          color: Colors.black,
                                          fontSize: 14,
                                        ),
                                      ),
                                      const SizedBox(height: 10,),
                                      Text("Price:${fakeStoreList[index].price.toString()}",
                                        style: Theme.of(context)
                                            .textTheme
                                            .titleMedium
                                            ?.copyWith(
                                          color: Colors.green,
                                          fontSize: 14,
                                        ),
                                      ),
                                      const SizedBox(height: 10,),

                                      Expanded(
                                        child: Text(fakeStoreList[index].description.toString(),
                                          style: Theme.of(context)
                                              .textTheme
                                              .titleMedium
                                              ?.copyWith(
                                            color: Colors.black,
                                            fontSize: 11,
                                        
                                          ),
                                        ),
                                      ),

                                    ],
                                  ),
                                ),
                                Image.network(fakeStoreList[index].image.toString(),
                                width: 100,
                                  height: 100,
                                ),

                              ],
                            ),
                          ),
                        );
                      },
                    );
                  }
                  })
            )
          ],
        )
      ),
    );
  }
}
