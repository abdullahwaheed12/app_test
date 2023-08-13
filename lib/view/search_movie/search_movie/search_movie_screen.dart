import 'package:app_test/view/search_movie/search_movie/search_movie_land_body.dart';
import 'package:app_test/view/search_movie/search_movie/search_movie_portrait_body.dart';
import 'package:flutter/material.dart';

import 'package:app_test/widgets/app_widgets/scaffold_widget.dart';

class SearchMovieScreen extends StatelessWidget {
  const SearchMovieScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ScaffoldWidget(
      useAppbar: false,
      child: Container(
        color: Colors.white,
        child: SafeArea(
          child: OrientationBuilder(
            builder: (context, orientation) {
              if (orientation == Orientation.portrait) {
                return const SearchMoviePortraitBody();
              } else {
                return const SearchMovieLandBody();
              }
            },
          ),
        ),
      ),
    );
  }
}
