import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class DisplayProduct extends StatefulWidget {
  const DisplayProduct({super.key});

  @override
  State<DisplayProduct> createState() => _DisplayProductState();
}

class _DisplayProductState extends State<DisplayProduct> {
  //Color
  Color gradientColor1 = const Color(0xff1976d3);
  Color gradientColor2 = const Color(0xff1361c2);
  List<Map<String, dynamic>> productList = [];


  //Show Method
  Future<void> _showProduct() async {
    SharedPreferences sp = await SharedPreferences.getInstance();

    String? storedProduct = sp.getString('myProductList');

    if (storedProduct != null) {
      setState(() {
       productList= List<Map<String,dynamic>>.from(jsonDecode(storedProduct));
      });
    }
  }


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _showProduct();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: gradientColor2,
          automaticallyImplyLeading: true,
          title: Text(
            "Display Products",
            style: Theme.of(context).textTheme.titleMedium,
          ),
          iconTheme:IconThemeData(
            color: Colors.white
          ),

        ),
        body: productList.isEmpty
            ? Center(
                child: Text(
                  "No Products added yet.",
                  style: Theme.of(context)
                      .textTheme
                      .titleMedium
                      ?.copyWith(color: Colors.black),
                ),
              )
            : ListView.builder(
                itemCount: productList.length,
                itemBuilder: (context, index) {
                  final productitem = productList[index];
                  return ListTile(
                    title: Text(
                      productitem['itemBrand'],
                      style: Theme.of(context)
                          .textTheme
                          .titleMedium
                          ?.copyWith(color: Colors.black),
                    ),
                    subtitle: Column(
                      children: [
                        Text(
                          'Size:${productitem['itemSize']}',
                          style: Theme.of(context)
                              .textTheme
                              .titleSmall
                              ?.copyWith(color: Colors.black),
                        ),
                        Text(
                          'Qunatity:${productitem['itemQuantity']}',
                          style: Theme.of(context)
                              .textTheme
                              .titleSmall
                              ?.copyWith(color: Colors.black),
                        ),
                        Text(
                          'Color:${productitem['itemColor']}',
                          style: Theme.of(context)
                              .textTheme
                              .titleSmall
                              ?.copyWith(color: Colors.black),
                        ),
                        Text(
                          'Description:${productitem['itemDescription']}',
                          style: Theme.of(context)
                              .textTheme
                              .titleSmall
                              ?.copyWith(color: Colors.black),
                        ),
                      ],
                    ),
                  );
                }));
  }
}
