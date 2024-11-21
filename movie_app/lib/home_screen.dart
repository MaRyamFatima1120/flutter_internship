import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movie_app/popular_movie_api/model/PopularMovieApi.dart';
import 'package:http/http.dart' as http;

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {


  Future<List> _getPopularApi() async {
    try {
      final response = await http.get(Uri.parse(
          "https://api.themoviedb.org/3/movie/popular?api_key=b778d0f46fe96cb5c13bc59733911a96"));


      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);
        final List<dynamic> results = data['results'];

        return results.map((json) => PopularMovieApi.fromJson(json)).toList();
        }
      else {
        return [];
      }
    } catch (e) {
      return [];
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          leading: Icon(Icons.sort, color: Colors.white),
          title: Text.rich(
            TextSpan(children: [
              TextSpan(
                  text: "E",
                  style: GoogleFonts.inter(
                      color: const Color(0xfffcc434),
                      fontSize: 25,
                      fontWeight: FontWeight.w700)),
              TextSpan(
                text: "Movie",
                style: GoogleFonts.inter(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.w700),
              ),
            ]),
          ),
          centerTitle: true,
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.search,
                color: Colors.white,
              ),
            ),
          ],
        ),
        body: Column(
          children: [
            Expanded(
                child: FutureBuilder(
                    future: _getPopularApi(),
                    builder: (context, snapshot) {
                      if (!snapshot.hasData) {
                        return const Center(
                            child: SpinKitRing(color: Color(0xfffcc434)));
                      } else {
                        return ListView.builder(
                          scrollDirection: Axis.horizontal,

                            itemCount: snapshot.data!.length,
                            itemBuilder: (context,index){
                            final movie = snapshot.data!.length;
                              return Container(
                                width: 300,
                                height: 300,
                                color: Colors.yellow,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image:NetworkImage('https://image.tmdb.org/t/p/w500${movie.posterPath}'), )
                                ),
                              );
                            });
                      }
                    }))
          ],
        ),
      ),
    );
  }
}
