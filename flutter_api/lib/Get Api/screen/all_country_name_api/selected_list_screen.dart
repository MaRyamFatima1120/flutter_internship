import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:http/http.dart' as http;

import '../product_api/product_screen.dart';
import 'CountryApiModel.dart';

class CountryApi extends StatefulWidget {
  const CountryApi({super.key});

  @override
  State<CountryApi> createState() => _CountryApiState();
}

class _CountryApiState extends State<CountryApi> {
  List<CountryApiModel> countryList = [];
  String? selectedCountry;
  String? selectedCountry1;
  String? selectedCountry2;

  Future<List<CountryApiModel>> _getApi() async {
    try {
      final response =
          await http.get(Uri.parse("https://freetestapi.com/api/v1/countries"));

      var data = jsonDecode(response.body.toString());
      countryList.clear();

      if (response.statusCode == 200) {
        for (Map<String, dynamic> i in data) {
          countryList.add(CountryApiModel.fromJson(i));
        }
        return countryList;
      } else {
        return countryList;
      }
    } catch (e) {
      print("Error:$e");
    }
    return [];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrangeAccent,
        automaticallyImplyLeading: false,
        title: Text(
          "DropDown Button",
          style: Theme.of(context)
              .textTheme
              .titleMedium
              ?.copyWith(color: Colors.white),
        ),
        actions: [
          IconButton(onPressed: (){Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>const ProductScreen()));

          }, icon:const Icon(Icons.arrow_forward_ios,color: Colors.white,))
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: FutureBuilder<List<CountryApiModel>>(
              future: _getApi(),
              builder: (context, snapshot) {
                if (!snapshot.hasData) {
                  return const Center(
                    child: SpinKitDualRing(
                      color: Colors.deepOrangeAccent,
                    ),
                  );
                } else {
                  return Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          DropdownButton(
                            hint: Text(
                              "Selected a country",
                              style: Theme.of(context)
                                  .textTheme
                                  .titleSmall
                                  ?.copyWith(
                                    color: Colors.black,
                                  ),
                            ),
                            icon: const Icon(Icons.keyboard_arrow_down),
                            isExpanded: true,
                            value: selectedCountry,
                            items: countryList.map((CountryApiModel country) {
                              return DropdownMenuItem<String>(
                                value: country.name,
                                child: Text(
                                  country.name ?? "No name",
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleSmall
                                      ?.copyWith(color: Colors.black),
                                ),
                              );
                            }).toList(),
                            onChanged: (String? value) {
                              setState(() {
                                selectedCountry = value;
                              });
                            },
                            elevation: 4,
                          ),
                          const SizedBox(
                            height: 40,
                          ),
                          Container(
                            padding: const EdgeInsets.all(10.0),
                            width: double.infinity,
                            height: 50,
                            decoration: BoxDecoration(
                              color: Colors.deepOrangeAccent.withOpacity(0.5),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: DropdownButton(
                              hint: Text(
                                "Selected a country",
                                style: Theme.of(context)
                                    .textTheme
                                    .titleSmall
                                    ?.copyWith(
                                      color: Colors.black,
                                    ),
                              ),
                              icon: const Icon(Icons.keyboard_arrow_down),
                              isExpanded: true,
                              value: selectedCountry1,
                              items: countryList.map((CountryApiModel country) {
                                return DropdownMenuItem<String>(
                                  value: country.name,
                                  child: Text(
                                    country.name ?? "No name",
                                    style: Theme.of(context)
                                        .textTheme
                                        .titleSmall
                                        ?.copyWith(color: Colors.black),
                                  ),
                                );
                              }).toList(),
                              onChanged: (String? value) {
                                setState(() {
                                  selectedCountry1 = value;
                                });
                              },
                              elevation: 4,
                            ),
                          ),
                          const SizedBox(
                            height: 10.0,
                          ),

                        ],
                      ));
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
