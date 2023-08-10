import 'package:flutter/material.dart';
import 'package:App_Test/controller/general_provider.dart';
import 'package:App_Test/model/upcomming_movie.dart';
import 'package:provider/provider.dart';

class SearchMovieProvider extends ChangeNotifier {
  var searchTEC = TextEditingController();
  List<MovieModel> filterMovies = [];

  filterMovie(BuildContext context) {
    var upcommingMovis = Provider.of<GeneralProvider>(context, listen: false)
        .upcommingMovieModel;
    if (upcommingMovis == null) {
      return;
    }
    filterMovies.clear();
    var movieList = upcommingMovis.results;
    for (var e in movieList) {
      print('searchTEC ${searchTEC.text}');
      print('title---- ${e.original_title}');
      if (e.original_title.contains(searchTEC.text)) {
        filterMovies.add(e);
      }
    }
    print('filters $filterMovies');
    notifyListeners();
  }
}
