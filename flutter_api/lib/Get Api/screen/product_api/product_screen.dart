import 'dart:async';
import 'dart:convert';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:http/http.dart';

import 'model/ProductApi.dart';

class ProductScreen extends StatefulWidget {
  const ProductScreen({super.key});

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  List<ProductApiModel> productList = [];

  Future<List<ProductApiModel>> getAPi() async {
    try {
      final response =
          await get(Uri.parse("https://api.escuelajs.co/api/v1/products"));

      var data = jsonDecode(response.body.toString());
      productList.clear();

      if (response.statusCode == 200) {
        for (Map i in data) {
          productList.add(ProductApiModel.fromJson(i));
        }
        return productList;
      } else {
        return productList;
      }
    } catch (e) {
      print("Error:$e");
      return [];
    }
  }


  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        automaticallyImplyLeading: false,
        title: Text(
          "Product Api",
          style: Theme.of(context).textTheme.titleMedium,
        ),
        actions: [
          IconButton(
              onPressed: () {},
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
                      child: SpinKitRing(color: Colors.black),
                    );
                  } else {
                    return GridView.builder(

                        itemCount: productList.length,
                        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            crossAxisSpacing: 5.0,
                            mainAxisSpacing: 5.0,
                          mainAxisExtent: 350,
                        ),
                        itemBuilder: (BuildContext context, int index) {
                          var product = productList[index];
                          var images = product.images ?? [];
                          return Card(
                           // color: Color(0xff17181c),

                            margin:const EdgeInsetsDirectional.all(10.0),
                            elevation: 5,
                            child:Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                ClipRRect(
                                  borderRadius:const BorderRadius.vertical(
                                    top: Radius.circular(10.0),
                                  ),
                                  child: SizedBox(

                                    width: double.infinity,
                                    height: 200,
                                    //color: Colors.amber,
                                      child:CarouselSlider.builder(
                                        itemCount: images.length,
                                        itemBuilder: (context, index, realIndex) {
                                          return ClipRRect(
                                            borderRadius:const BorderRadius.vertical(
                                              top: Radius.circular(10.0),
                                            ),
                                            child: SizedBox(
                                              width: double.infinity,
                                              height: 150,
                                             // color: Colors.pink,
                                              child: Image.network(
                                                images[index],
                                                fit: BoxFit.cover,
                                                filterQuality: FilterQuality.high,
                                              ),
                                            ),
                                          );
                                        },
                                        options: CarouselOptions(
                                          autoPlay: true,
                                          autoPlayInterval: const Duration(seconds:15),
                                          // autoPlayAnimationDuration: Duration(seconds:3 ),
                                          enlargeCenterPage: true,
                                          viewportFraction: 1.0,
                                        ),
                                      ),
                                  ),
                                ),

                                const SizedBox(height: 5,),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text("\$${product.price.toString()}",style: Theme.of(context).textTheme.titleSmall?.copyWith(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold
                                  ),),
                                ),

                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                                    child: Text(product.title.toString(),style: Theme.of(context).textTheme.titleSmall?.copyWith(
                                        fontSize: 16,
                                  
                                    ),),
                                  ),
                                ),

                              ],
                            )
                          );
                        });
                  }
                }),
          )
        ],
      ),
    );
  }
}

/**/
