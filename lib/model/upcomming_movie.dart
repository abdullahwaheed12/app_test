import 'dart:convert';

import 'package:flutter/foundation.dart';

class UpcommingMovieModel {
  final Dates dates;
  final int page;
  final List<MovieModel> results;
  final int total_pages;
  final int total_results;
  UpcommingMovieModel({
    required this.dates,
    required this.page,
    required this.results,
    required this.total_pages,
    required this.total_results,
  });

  UpcommingMovieModel copyWith({
    Dates? dates,
    int? page,
    List<MovieModel>? results,
    int? total_pages,
    int? total_results,
  }) {
    return UpcommingMovieModel(
      dates: dates ?? this.dates,
      page: page ?? this.page,
      results: results ?? this.results,
      total_pages: total_pages ?? this.total_pages,
      total_results: total_results ?? this.total_results,
    );
  }

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    result.addAll({'dates': dates.toMap()});
    result.addAll({'page': page});
    result.addAll({'results': results.map((x) => x.toMap()).toList()});
    result.addAll({'total_pages': total_pages});
    result.addAll({'total_results': total_results});

    return result;
  }

  factory UpcommingMovieModel.fromMap(Map<String, dynamic> map) {
    return UpcommingMovieModel(
      dates: Dates.fromMap(map['dates']),
      page: map['page']?.toInt() ?? 0,
      results: List<MovieModel>.from(
          map['results']?.map((x) => MovieModel.fromMap(x))),
      total_pages: map['total_pages']?.toInt() ?? 0,
      total_results: map['total_results']?.toInt() ?? 0,
    );
  }

  String toJson() => json.encode(toMap());

  factory UpcommingMovieModel.fromJson(String source) =>
      UpcommingMovieModel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'UpcommingMovieModel(dates: $dates, page: $page, results: $results, total_pages: $total_pages, total_results: $total_results)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is UpcommingMovieModel &&
        other.dates == dates &&
        other.page == page &&
        listEquals(other.results, results) &&
        other.total_pages == total_pages &&
        other.total_results == total_results;
  }

  @override
  int get hashCode {
    return dates.hashCode ^
        page.hashCode ^
        results.hashCode ^
        total_pages.hashCode ^
        total_results.hashCode;
  }
}

class Dates {
  final String maximum;
  final String minimum;
  Dates({
    required this.maximum,
    required this.minimum,
  });

  Dates copyWith({
    String? maximum,
    String? minimum,
  }) {
    return Dates(
      maximum: maximum ?? this.maximum,
      minimum: minimum ?? this.minimum,
    );
  }

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    result.addAll({'maximum': maximum});
    result.addAll({'minimum': minimum});

    return result;
  }

  factory Dates.fromMap(Map<String, dynamic> map) {
    return Dates(
      maximum: map['maximum'] ?? '',
      minimum: map['minimum'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory Dates.fromJson(String source) => Dates.fromMap(json.decode(source));

  @override
  String toString() => 'Dates(maximum: $maximum, minimum: $minimum)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Dates &&
        other.maximum == maximum &&
        other.minimum == minimum;
  }

  @override
  int get hashCode => maximum.hashCode ^ minimum.hashCode;
}

class MovieModel {
  final bool adult;
  final String backdrop_path;
  final List<int> genre_ids;
  final int id;
  final String original_language;
  final String original_title;
  final String overview;
  final double popularity;
  final String poster_path;
  final String release_date;
  final String title;
  final bool video;
  final double vote_average;
  final int vote_count;
  MovieModel({
    required this.adult,
    required this.backdrop_path,
    required this.genre_ids,
    required this.id,
    required this.original_language,
    required this.original_title,
    required this.overview,
    required this.popularity,
    required this.poster_path,
    required this.release_date,
    required this.title,
    required this.video,
    required this.vote_average,
    required this.vote_count,
  });

  MovieModel copyWith({
    bool? adult,
    String? backdrop_path,
    List<int>? genre_ids,
    int? id,
    String? original_language,
    String? original_title,
    String? overview,
    double? popularity,
    String? poster_path,
    String? release_date,
    String? title,
    bool? video,
    double? vote_average,
    int? vote_count,
  }) {
    return MovieModel(
      adult: adult ?? this.adult,
      backdrop_path: backdrop_path ?? this.backdrop_path,
      genre_ids: genre_ids ?? this.genre_ids,
      id: id ?? this.id,
      original_language: original_language ?? this.original_language,
      original_title: original_title ?? this.original_title,
      overview: overview ?? this.overview,
      popularity: popularity ?? this.popularity,
      poster_path: poster_path ?? this.poster_path,
      release_date: release_date ?? this.release_date,
      title: title ?? this.title,
      video: video ?? this.video,
      vote_average: vote_average ?? this.vote_average,
      vote_count: vote_count ?? this.vote_count,
    );
  }

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    result.addAll({'adult': adult});
    result.addAll({'backdrop_path': backdrop_path});
    result.addAll({'genre_ids': genre_ids});
    result.addAll({'id': id});
    result.addAll({'original_language': original_language});
    result.addAll({'original_title': original_title});
    result.addAll({'overview': overview});
    result.addAll({'popularity': popularity});
    result.addAll({'poster_path': poster_path});
    result.addAll({'release_date': release_date});
    result.addAll({'title': title});
    result.addAll({'video': video});
    result.addAll({'vote_average': vote_average});
    result.addAll({'vote_count': vote_count});

    return result;
  }

  factory MovieModel.fromMap(Map<String, dynamic> map) {
    return MovieModel(
      adult: map['adult'] ?? false,
      backdrop_path: map['backdrop_path'] ?? '',
      genre_ids: List<int>.from(map['genre_ids']),
      id: map['id']?.toInt() ?? 0,
      original_language: map['original_language'] ?? '',
      original_title: map['original_title'] ?? '',
      overview: map['overview'] ?? '',
      popularity: map['popularity']?.toDouble() ?? 0.0,
      poster_path: map['poster_path'] ?? '',
      release_date: map['release_date'] ?? '',
      title: map['title'] ?? '',
      video: map['video'] ?? false,
      vote_average: map['vote_average']?.toDouble() ?? 0.0,
      vote_count: map['vote_count']?.toInt() ?? 0,
    );
  }

  String toJson() => json.encode(toMap());

  factory MovieModel.fromJson(String source) =>
      MovieModel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Result(adult: $adult, backdrop_path: $backdrop_path, genre_ids: $genre_ids, id: $id, original_language: $original_language, original_title: $original_title, overview: $overview, popularity: $popularity, poster_path: $poster_path, release_date: $release_date, title: $title, video: $video, vote_average: $vote_average, vote_count: $vote_count)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is MovieModel &&
        other.adult == adult &&
        other.backdrop_path == backdrop_path &&
        listEquals(other.genre_ids, genre_ids) &&
        other.id == id &&
        other.original_language == original_language &&
        other.original_title == original_title &&
        other.overview == overview &&
        other.popularity == popularity &&
        other.poster_path == poster_path &&
        other.release_date == release_date &&
        other.title == title &&
        other.video == video &&
        other.vote_average == vote_average &&
        other.vote_count == vote_count;
  }

  @override
  int get hashCode {
    return adult.hashCode ^
        backdrop_path.hashCode ^
        genre_ids.hashCode ^
        id.hashCode ^
        original_language.hashCode ^
        original_title.hashCode ^
        overview.hashCode ^
        popularity.hashCode ^
        poster_path.hashCode ^
        release_date.hashCode ^
        title.hashCode ^
        video.hashCode ^
        vote_average.hashCode ^
        vote_count.hashCode;
  }
}