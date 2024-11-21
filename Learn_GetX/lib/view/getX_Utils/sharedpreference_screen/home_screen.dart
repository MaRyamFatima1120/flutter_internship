import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learn_getx/view/getX_Utils/sharedpreference_screen/custom_textform_field.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _itemNameController = TextEditingController();
  final TextEditingController _itemSizeController = TextEditingController();
  final TextEditingController _itemQuantityController = TextEditingController();
  final TextEditingController _itemColor = TextEditingController();
  final TextEditingController _itemDescription = TextEditingController();

  String? validData(String? value) {
    if (value == null || value.isEmpty) {
      return "Please Enter this Field.";
    }
    return null;
  }

  //Color
  Color gradientColor1 = const Color(0xff1976d3);
  Color gradientColor2 = const Color(0xff1361c2);

  //Add Function

  void _AddProduct() async {
    if (_formKey.currentState?.validate() ?? false) {
      Get.snackbar("Product is Added scuessfully.", "",);
          //List with Preference
          //Step1: Creating a product

          Map<String,dynamic> product ={
          "itemBrand":_itemNameController.text.toString(),
          "itemSize":_itemSizeController.text.toString(),
          "itemQuantity":_itemQuantityController.text.toString(),
          "itemColor":_itemColor.text.toString(),
          "itemDescription":_itemDescription.text.toString(),
          };

          //Step2: Fetch the existing product list from SharedPreferences
          SharedPreferences sp= await SharedPreferences.getInstance();
      String? storedProduct=sp.getString('myProductList',);

      //Step3:Initialize an empty list or convert the stored
      List<Map<String,dynamic>> productList=[];

      if(storedProduct != null){
        productList=List<Map<String,dynamic>>.from(jsonDecode(storedProduct));
      }
      // Step 4: Add the new product to the list
      productList.add(product);

// Step 5: Save the updated product list back to SharedPreferences as a JSON string

      await sp.setString('myProductList', jsonEncode(productList));

      // SharedPreferences sp = await SharedPreferences.getInstance();
      // sp.setString("itemBrand", _itemNameController.text.toString());
      // sp.setString("itemSize", _itemSizeController.text.toString());
      // sp.setString("itemQuantity", _itemQuantityController.text.toString());
      // sp.setString("itemColor", _itemColor.text.toString());
      // sp.setString("itemDescription", _itemDescription.text.toString());
      // sp.setBool("isLogin", true);

//Clear Input Fields
      _itemNameController.clear();
      _itemSizeController.clear();
      _itemQuantityController.clear();
      _itemColor.clear();
      _itemDescription.clear();
    }
  }




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: gradientColor2,
        automaticallyImplyLeading: false,
        title: Text(
          "Add Products",
          style: Theme.of(context).textTheme.titleMedium,
        ),
        actions: [
          IconButton(
              onPressed: () async {
                SharedPreferences sp = await SharedPreferences.getInstance();
                sp.clear();
                Navigator.pushNamed(context, '/second');
              },
              icon: const Icon(
                Icons.logout,
                color: Colors.white,
              ))
        ],
      ),
      body: SingleChildScrollView(
          child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10),
        child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Item Brand",
                  style: Theme.of(context)
                      .textTheme
                      .titleMedium
                      ?.copyWith(color: Colors.black),
                ),
                CustomTextFormField(
                  style: Theme.of(context)
                      .textTheme
                      .titleMedium
                      ?.copyWith(color: Colors.black),
                  keyboardType: TextInputType.text,
                  controller: _itemNameController,
                  enabledColor: const Color(0xffe7e9eb),
                  focusedColor: gradientColor1,
                  focusedError: const Color(0xffe7e9eb),
                  hintText: "Enter brand Name",
                  hintTextStyle: Theme.of(context)
                      .textTheme
                      .titleSmall
                      ?.copyWith(color: Colors.black),
                  validator: validData,
                ),
                Text(
                  "Item Size",
                  style: Theme.of(context)
                      .textTheme
                      .titleMedium
                      ?.copyWith(color: Colors.black),
                ),
                CustomTextFormField(
                  style: Theme.of(context)
                      .textTheme
                      .titleMedium
                      ?.copyWith(color: Colors.black),
                  keyboardType: TextInputType.text,
                  controller: _itemSizeController,
                  enabledColor: const Color(0xffe7e9eb),
                  focusedColor: gradientColor1,
                  focusedError: const Color(0xffe7e9eb),
                  hintText: "Enter Item Size i.e,Small,Medium,Large",
                  hintTextStyle: Theme.of(context)
                      .textTheme
                      .titleSmall
                      ?.copyWith(color: Colors.black),
                  validator: validData,
                ),
                Text(
                  "Item Quantity",
                  style: Theme.of(context)
                      .textTheme
                      .titleMedium
                      ?.copyWith(color: Colors.black),
                ),
                CustomTextFormField(
                  style: Theme.of(context)
                      .textTheme
                      .titleMedium
                      ?.copyWith(color: Colors.black),
                  keyboardType: TextInputType.text,
                  controller: _itemQuantityController,
                  enabledColor: const Color(0xffe7e9eb),
                  focusedColor: gradientColor1,
                  focusedError: const Color(0xffe7e9eb),
                  hintText: "Enter Item Quantity",
                  hintTextStyle: Theme.of(context)
                      .textTheme
                      .titleSmall
                      ?.copyWith(color: Colors.black),
                  validator: validData,
                ),
                Text(
                  "Item Color",
                  style: Theme.of(context)
                      .textTheme
                      .titleMedium
                      ?.copyWith(color: Colors.black),
                ),
                CustomTextFormField(
                  style: Theme.of(context)
                      .textTheme
                      .titleMedium
                      ?.copyWith(color: Colors.black),
                  keyboardType: TextInputType.text,
                  controller: _itemColor,
                  enabledColor: const Color(0xffe7e9eb),
                  focusedColor: gradientColor1,
                  focusedError: const Color(0xffe7e9eb),
                  hintText: "Enter Item Color",
                  hintTextStyle: Theme.of(context)
                      .textTheme
                      .titleSmall
                      ?.copyWith(color: Colors.black),
                  validator: validData,
                ),
                Text(
                  "Item Description",
                  style: Theme.of(context)
                      .textTheme
                      .titleMedium
                      ?.copyWith(color: Colors.black),
                ),
                CustomTextFormField(
                  style: Theme.of(context)
                      .textTheme
                      .titleMedium
                      ?.copyWith(color: Colors.black),
                  maxLines: 2,
                  keyboardType: TextInputType.text,
                  controller: _itemDescription,
                  enabledColor: const Color(0xffe7e9eb),
                  focusedColor: gradientColor1,
                  focusedError: const Color(0xffe7e9eb),
                  hintText: "Enter Item Description",

                  hintTextStyle: Theme.of(context)
                      .textTheme
                      .titleSmall
                      ?.copyWith(color: Colors.black),
                  validator: validData,
                ),
                const SizedBox(
                  height: 30,
                ),
               Row(
                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                 children: [
                   Center(
                     child: ElevatedButton(
                       onPressed: () {
                         _AddProduct();
                       },
                       style: ElevatedButton.styleFrom(
                           backgroundColor: gradientColor1,
                           minimumSize: const Size(100, 70),
                           shape: RoundedRectangleBorder(
                             borderRadius: BorderRadius.circular(10.0),
                           )),
                       child: Text(
                         "Add Product",
                         style: Theme.of(context)
                             .textTheme
                             .titleMedium
                             ?.copyWith(fontSize: 20, color: Colors.white),
                       ),
                     ),
                   ),
                   Center(
                     child: ElevatedButton(
                       onPressed: () {
                         Navigator.pushNamed(context, '/fourth');
                       },
                       style: ElevatedButton.styleFrom(
                           backgroundColor: gradientColor1,
                           minimumSize: const Size(100, 70),
                           shape: RoundedRectangleBorder(
                             borderRadius: BorderRadius.circular(10.0),
                           )),
                       child: Text(
                         "Show Product",
                         style: Theme.of(context)
                             .textTheme
                             .titleMedium
                             ?.copyWith(fontSize: 20, color: Colors.white),
                       ),
                     ),
                   )
                 ],
               )
              ],
            )),
      )),
    );
  }
}
