import 'package:app_test/model/upcomming_movie.dart';
import 'package:app_test/view/select_date/select_date_land_body.dart';
import 'package:app_test/view/select_date/select_date_portrait_body.dart';
import 'package:app_test/widgets/app_widgets/scaffold_widget.dart';
import 'package:flutter/material.dart';

class SelectSeatsScreen extends StatelessWidget {
  const SelectSeatsScreen({
    Key? key,
    required this.movie,
  }) : super(key: key);
  final MovieModel movie;

  @override
  Widget build(BuildContext context) {
    return ScaffoldWidget(
      useAppbar: false,
      child: SafeArea(
        child: OrientationBuilder(
          builder: (context, orientation) {
            if (orientation == Orientation.portrait) {
              return SelectDatePortraitBody(movie: movie);
            } else {
              return SelectDateLandBody(movie: movie);
            }
          },
        ),
      ),
    );
  }
}
