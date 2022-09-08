import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:http_request_rest_api_flutter/models/movie.dart';

class HttpService {
  final String apiKey = 'b7e4bebf87ee0cec93dbb66d4638b3eb';
  final String baseUrl = 'https://api.themoviedb.org/3/movie/popular?api_key=';

  Future<List?> getPopularMovies() async {
    final String uri = baseUrl + apiKey;

    http.Response result = await http.get(Uri.parse(uri));
    if (result.statusCode == HttpStatus.ok) {
      print("Success");
      final jsonResponse = json.decode(result.body);
      final moviesMap = jsonResponse['results'];
      List movies = moviesMap.map((i) => Movie.fromJson(i)).toList();
      return movies;
       //String response = result.body;
       //return movies;
    } else {
      print("Failed to load data");
      return null;
    }
  }
}