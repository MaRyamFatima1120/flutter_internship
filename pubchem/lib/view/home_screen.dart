import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String compoundName = "quercetin";
  String cid = '';
  String canonicalSmiles = '';
  String molecularWeight ="";

  Future<void> fetchCompoundData(String compoundName) async {
    final url = 'https://pubchem.ncbi.nlm.nih.gov/rest/pug/compound/name/$compoundName/JSON';
    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      final compoundList = data['PC_Compounds'];

      if (compoundList.isNotEmpty) {
        final compound = compoundList[0];
        cid = compound['id']['id']['cid'].toString();
        final properties = compound['props'];

        canonicalSmiles = '';
        for (var prop in properties) {
          if (prop['urn']['label'] == "SMILES") {
            canonicalSmiles = prop['value']['sval'];
            break;
          }
        }


        // Update the UI
        setState(() {});
      } else {
        cid = 'No compound found for $compoundName.';
        canonicalSmiles = '';
      }
    } else {
      cid = 'Failed to fetch compound data. Status code: ${response.statusCode}';
      canonicalSmiles = '';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
          title: const Text('CID Fetcher')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Compound Name: $compoundName'),
            const SizedBox(height: 20),
            Text('CID: $cid'),
            const SizedBox(height: 10),
            Text('Canonical SMILES: $canonicalSmiles'),

            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                fetchCompoundData(compoundName);
              },
              child: const Text('Fetch CID'),
            ),
          ],
        ),
      ),
    );
  }
}
