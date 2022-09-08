class Movie {
  late int id;
  late String title;
  late double voteAverage;
  late String overview;
  late String posterPath;
  late String date;
  late int vote;

  Movie(this.id, this.title, this.voteAverage, this.overview, this.posterPath, this.date, this.vote);

  Movie.fromJson(Map<String, dynamic> parsedJson) {
    this.id = parsedJson['id'];
    this.title = parsedJson['title'];
    this.voteAverage = parsedJson['vote_average'] * 1.0;
    this.overview = parsedJson['overview'];
    this.posterPath = parsedJson['poster_path'];
    this.date = parsedJson['release_date'];
    this.vote = parsedJson['vote_count'] * 1;
  }
}