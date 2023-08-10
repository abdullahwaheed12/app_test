import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:App_Test/controller/general_provider.dart';
import 'package:App_Test/services/navigation_service.dart';

import 'package:App_Test/utils/math_utils.dart';
import 'package:App_Test/widgets/empty_space_widget.dart';
import 'package:provider/provider.dart';

import '../../model/upcomming_movie.dart';
import '../video_player/video_player.dart';

class MovieDetailScreen extends StatelessWidget {
  const MovieDetailScreen({
    Key? key,
    required this.movie,
  }) : super(key: key);
  final MovieModel movie;
  @override
  Widget build(BuildContext context) {
    var generalProvider = Provider.of<GeneralProvider>(context);
    print('id ${movie.id}');
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            //1
            Stack(
              children: [
                SizedBox(
                  height: size.height * 0.6,
                  width: size.width,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: CachedNetworkImage(
                      imageUrl:
                          'https://www.themoviedb.org/t/p/w1280${movie.poster_path}',
                      fit: BoxFit.fill,
                      progressIndicatorBuilder:
                          (context, url, downloadProgress) => Center(
                        child: CircularProgressIndicator(
                            value: downloadProgress.progress),
                      ),
                      errorWidget: (context, url, error) =>
                          const Icon(Icons.error),
                    ),
                  ),
                ),
                Container(
                  height: size.height * 0.6,
                  padding: const EdgeInsets.only(left: 20),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: const Alignment(0.00, 1.00),
                      end: const Alignment(0, -1),
                      colors: [Colors.black, Colors.black.withOpacity(0)],
                    ),
                  ),
                ),
                SizedBox(
                  height: size.height * 0.6,
                  child: Column(
                    children: [
                      const DynamicVerticalSpace(40),
                      Row(
                        children: [
                          const DynamicHorizontalSpace(20),
                          InkWell(
                            onTap: () {
                              NavigationService.pop();
                            },
                            child: const Icon(
                              Icons.arrow_back_ios,
                              color: Colors.white,
                            ),
                          ),
                          const DynamicHorizontalSpace(10),
                          const Text(
                            'Watch',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                              height: 1.25,
                            ),
                          )
                        ],
                      ),
                      const Spacer(),
                      Text(
                        'In theaters ${generalProvider.formatDate(movie.release_date)}',
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const DynamicVerticalSpace(15),
                      Container(
                        width: 243,
                        height: 50,
                        alignment: Alignment.center,
                        decoration: ShapeDecoration(
                          color: const Color(0xFF61C3F2),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        child: const Text(
                          'Get Tickets',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      const DynamicVerticalSpace(10),
                      InkWell(
                        onTap: () async {
                          var teaserKey =
                              await generalProvider.getVideoId(movie.id);

                          NavigationService.push(YoutubeVideoPlayWidget(
                            initialVideoId: teaserKey,
                          ));
                        },
                        child: Container(
                          width: 243,
                          height: 50,
                          alignment: Alignment.center,
                          decoration: ShapeDecoration(
                            shape: RoundedRectangleBorder(
                              side: const BorderSide(
                                  width: 0.50, color: Color(0xFF61C3F2)),
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.play_arrow,
                                color: Colors.white,
                              ),
                              DynamicHorizontalSpace(6),
                              Text(
                                'Watch Trailer',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const DynamicVerticalSpace(30),
                    ],
                  ),
                )
              ],
            ),
            //2
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 27),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Genres',
                    style: TextStyle(
                      color: Color(0xFF202C43),
                      fontSize: 16,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const DynamicVerticalSpace(20),
                  Wrap(
                    children: movie.genre_ids
                        .map(
                          (genreId) => MovieDetailTagWidget(
                              text: generalProvider.getGenreName(genreId),
                              color: generalProvider.getGenreColor(genreId)),
                        )
                        .toList(),
                  ),
                  const DynamicVerticalSpace(30),
                  const Text(
                    'Overview',
                    style: TextStyle(
                      color: Color(0xFF202C43),
                      fontSize: 16,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                      height: 1.25,
                    ),
                  ),
                  const DynamicVerticalSpace(14),
                  Text(
                    movie.overview,
                    style: const TextStyle(
                      color: Color(0xFF8F8F8F),
                      fontSize: 12,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                      height: 1.60,
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MovieDetailTagWidget extends StatelessWidget {
  const MovieDetailTagWidget({
    Key? key,
    required this.text,
    required this.color,
  }) : super(key: key);
  final String text;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60,
      height: 24,
      margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 2),
      decoration: ShapeDecoration(
        color: color,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
      ),
      child: Text(
        text,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 12,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w600,
          height: 1.67,
        ),
      ),
    );
  }
}
