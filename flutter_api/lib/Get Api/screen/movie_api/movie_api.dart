import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../all_country_name_api/selected_list_screen.dart';

class MovieApi extends StatefulWidget {
  const MovieApi({super.key});

  @override
  State<MovieApi> createState() => _MovieApiState();
}

class _MovieApiState extends State<MovieApi> {
  late Future<List<Movie>> movies;

  @override
  void initState() {
    super.initState();
    movies = fetchMovies(); // Fetch movies when the widget is first built
  }

  Future<List<Movie>> fetchMovies() async {
    final url = 'https://api.themoviedb.org/3/movie/popular?api_key=b778d0f46fe96cb5c13bc59733911a96'; // TMDB API endpoint

    try {
      final response = await http.get(Uri.parse(url));

      if (response.statusCode == 200) {
        // Successfully fetched data
        var data = jsonDecode(response.body);
        List<Movie> movies = (data['results'] as List)
            .map((movieJson) => Movie.fromJson(movieJson))
            .toList();
        return movies;

      } else {
        // Handle errors
        throw Exception('Failed to load data. Status code: ${response.statusCode}');
      }
    } catch (e) {
      throw Exception('Error: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title:const  Text('Popular Movies'),
        actions: [
          IconButton(onPressed: (){
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>const CountryApi()));
          }, icon: Icon(Icons.arrow_forward))
        ],
      ),
      body: FutureBuilder<List<Movie>>(
        future: movies,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return Center(child: Text('No movies found.'));
          } else {
            return ListView.builder(
              itemCount: snapshot.data!.length,
              itemBuilder: (context, index) {
                final movie = snapshot.data![index];
                return ListTile(
                  leading: Image.network('https://image.tmdb.org/t/p/w500${movie.posterPath}'), // Movie poster
                  title: Text(movie.title),
                  subtitle: Text(movie.releaseDate),
                );
              },
            );
          }
        },
      ),
    );
  }
}

class Movie {
  final String title;
  final String posterPath;
  final String releaseDate;

  Movie({
    required this.title,
    required this.posterPath,
    required this.releaseDate,
  });

  factory Movie.fromJson(Map<String, dynamic> json) {
    return Movie(
      title: json['title'],
      posterPath: json['poster_path'],
      releaseDate: json['release_date'],
    );
  }
}
