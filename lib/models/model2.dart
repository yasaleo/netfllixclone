// // To parse this JSON data, do
// //
// //     final model = modelFromJson(jsonString);

// import 'dart:convert';

// Model modelFromJson(String str) => Model.fromJson(json.decode(str));

// String modelToJson(Model data) => json.encode(data.toJson());

// class Model {
//   Model({
//     this.page,
//     this.results,
//     this.totalPages,
//     this.totalResults,
//   });

//   int? page;
//   List<Result2>? results;
//   int ?totalPages;
//   int ?totalResults;

//   factory Model.fromJson(Map<String, dynamic> json) => Model(
//         page: json["page"],
//         results:
//             List<Result2>.from(json["results"].map((x) => Result2.fromJson(x))),
//         totalPages: json["total_pages"],
//         totalResults: json["total_results"],
//       );

//   Map<String, dynamic> toJson() => {
//         "page": page,
//         "results": List<dynamic>.from(results!.map((x) => x.toJson())),
//         "total_pages": totalPages,
//         "total_results": totalResults,
//       };
// }

// class Result2 {
//   Result2({
//     // this.adult,
//     this.backdropPath,// To parse this JSON data, do
// //
// //     final model = modelFromJson(jsonString);

// import 'dart:convert';

// Model modelFromJson(String str) => Model.fromJson(json.decode(str));

// String modelToJson(Model data) => json.encode(data.toJson());

// class Model {
//   Model({
//     this.page,
//     this.results,
//     this.totalPages,
//     this.totalResults,
//   });

//   int? page;
//   List<Result2>? results;
//   int ?totalPages;
//   int ?totalResults;

//   factory Model.fromJson(Map<String, dynamic> json) => Model(
//         page: json["page"],
//         results:
//             List<Result2>.from(json["results"].map((x) => Result2.fromJson(x))),
//         totalPages: json["total_pages"],
//         totalResults: json["total_results"],
//       );

//   Map<String, dynamic> toJson() => {
//         "page": page,
//         "results": List<dynamic>.from(results!.map((x) => x.toJson())),
//         "total_pages": totalPages,
//         "total_results": totalResults,
//       };
// }

// class Result2 {
//   Result2({
//     // this.adult,
//     this.backdropPath,
//     this.id,
//     this.title,
//     // this.originalLanguage,
//     this.originalTitle,
//     this.overview,
//     this.posterPath,
//     // this.mediaType,
//     // this.genreIds,
//     // this.popularity,
//     // this.releaseDate,
//     // this.video,
//     // this.voteAverage,
//     // this.voteCount,
//     this.name,
//     this.originalName,
//     // this.firstAirDate,
//     // this.originCountry,
//   });

//   // bool adult;
//   String? backdropPath;
//   int? id;
//   String? title;
//   // OriginalLanguage originalLanguage;
//   String? originalTitle;
//   String? overview;
//   String? posterPath;
//   // MediaType mediaType;
//   // List<int> genreIds;
//   // double popularity;
//   // DateTime releaseDate;
//   // bool video;
//   // double voteAverage;
//   // int voteCount;
//   String ?name;
//   String ?originalName;
//   // DateTime firstAirDate;
//   // List<String> originCountry;

//   factory Result2.fromJson(Map<String, dynamic> json) => Result2(
//         // adult: json["adult"],
//         backdropPath: json["backdrop_path"],
//         id: json["id"],
//         title: json["title"] == null ? null : json["title"],
//         // originalLanguage: originalLanguageValues.map[json["original_language"]],
//         originalTitle:
//             json["original_title"] == null ? null : json["original_title"],
//         overview: json["overview"],
//         posterPath: json["poster_path"],
//         // mediaType: mediaTypeValues.map[json["media_type"]],
//         // genreIds: List<int>.from(json["genre_ids"].map((x) => x)),
//         // popularity: json["popularity"].toDouble(),
//         // releaseDate: json["release_date"] == null
//             // ? null
//             // : DateTime.parse(json["release_date"]),
//         // video: json["video"] == null ? null : json["video"],
//         // voteAverage: json["vote_average"].toDouble(),
//         // voteCount: json["vote_count"],
//         name: json["name"] == null ? null : json["name"],
//         originalName:
//             json["original_name"] == null ? null : json["original_name"],
//         // firstAirDate: json["first_air_date"] == null
//             // ? null
//             // : DateTime.parse(json["first_air_date"]),
//         // originCountry: json["origin_country"] == null
//             // ? null
//             // : List<String>.from(json["origin_country"].map((x) => x)),
//       );

//   Map<String, dynamic> toJson() => {
//         // "adult": adult,
//         "backdrop_path": backdropPath,
//         "id": id,
//         "title": title == null ? null : title,
//         // "original_language": originalLanguageValues.reverse[originalLanguage],
//         "original_title": originalTitle == null ? null : originalTitle,
//         "overview": overview,
//         "poster_path": posterPath,
//         // "media_type": mediaTypeValues.reverse[mediaType],
//         // "genre_ids": List<dynamic>.from(genreIds.map((x) => x)),
//         // "popularity": popularity,
//         // "release_date": releaseDate == null
//             // ? null
//             // : "${releaseDate.year.toString().padLeft(4, '0')}-${releaseDate.month.toString().padLeft(2, '0')}-${releaseDate.day.toString().padLeft(2, '0')}",
//         // "video": video == null ? null : video,
//         // "vote_average": voteAverage,
//         // "vote_count": voteCount,
//         "name": name == null ? null : name,
//         "original_name": originalName == null ? null : originalName,
//         // "first_air_date": firstAirDate == null
//             // ? null
//             // : "${firstAirDate.year.toString().padLeft(4, '0')}-${firstAirDate.month.toString().padLeft(2, '0')}-${firstAirDate.day.toString().padLeft(2, '0')}",
//         // "origin_country": originCountry == null
//             // ? null
//             // : List<dynamic>.from(originCountry.map((x) => x)),
//       };
// }

// // enum MediaType { MOVIE, TV }

// // final mediaTypeValues =
// //     EnumValues({"movie": MediaType.MOVIE, "tv": MediaType.TV});

// // enum OriginalLanguage { EN, DE, KO }

// // final originalLanguageValues = EnumValues({
// //   "de": OriginalLanguage.DE,
// //   "en": OriginalLanguage.EN,
// //   "ko": OriginalLanguage.KO
// // });

// // class EnumValues<T> {
// //   Map<String, T> map;
// //   Map<T, String> reverseMap;

// //   EnumValues(this.map);

// //   Map<T, String> get reverse {
// //     if (reverseMap == null) {
// //       reverseMap = map.map((k, v) => new MapEntry(v, k));
// //     }
// //     return reverseMap;
// //   }
// // }

//     this.id,
//     this.title,
//     // this.originalLanguage,
//     this.originalTitle,
//     this.overview,
//     this.posterPath,
//     // this.mediaType,
//     // this.genreIds,
//     // this.popularity,
//     // this.releaseDate,
//     // this.video,
//     // this.voteAverage,
//     // this.voteCount,
//     this.name,
//     this.originalName,
//     // this.firstAirDate,
//     // this.originCountry,
//   });

//   // bool adult;
//   String? backdropPath;
//   int? id;
//   String? title;
//   // OriginalLanguage originalLanguage;
//   String? originalTitle;
//   String? overview;
//   String? posterPath;
//   // MediaType mediaType;
//   // List<int> genreIds;
//   // double popularity;
//   // DateTime releaseDate;
//   // bool video;
//   // double voteAverage;
//   // int voteCount;
//   String ?name;
//   String ?originalName;
//   // DateTime firstAirDate;
//   // List<String> originCountry;

//   factory Result2.fromJson(Map<String, dynamic> json) => Result2(
//         // adult: json["adult"],
//         backdropPath: json["backdrop_path"],
//         id: json["id"],
//         title: json["title"] == null ? null : json["title"],
//         // originalLanguage: originalLanguageValues.map[json["original_language"]],
//         originalTitle:
//             json["original_title"] == null ? null : json["original_title"],
//         overview: json["overview"],
//         posterPath: json["poster_path"],
//         // mediaType: mediaTypeValues.map[json["media_type"]],
//         // genreIds: List<int>.from(json["genre_ids"].map((x) => x)),
//         // popularity: json["popularity"].toDouble(),
//         // releaseDate: json["release_date"] == null
//             // ? null
//             // : DateTime.parse(json["release_date"]),
//         // video: json["video"] == null ? null : json["video"],
//         // voteAverage: json["vote_average"].toDouble(),
//         // voteCount: json["vote_count"],
//         name: json["name"] == null ? null : json["name"],
//         originalName:
//             json["original_name"] == null ? null : json["original_name"],
//         // firstAirDate: json["first_air_date"] == null
//             // ? null
//             // : DateTime.parse(json["first_air_date"]),
//         // originCountry: json["origin_country"] == null
//             // ? null
//             // : List<String>.from(json["origin_country"].map((x) => x)),
//       );

//   Map<String, dynamic> toJson() => {
//         // "adult": adult,
//         "backdrop_path": backdropPath,
//         "id": id,
//         "title": title == null ? null : title,
//         // "original_language": originalLanguageValues.reverse[originalLanguage],
//         "original_title": originalTitle == null ? null : originalTitle,
//         "overview": overview,
//         "poster_path": posterPath,
//         // "media_type": mediaTypeValues.reverse[mediaType],
//         // "genre_ids": List<dynamic>.from(genreIds.map((x) => x)),
//         // "popularity": popularity,
//         // "release_date": releaseDate == null
//             // ? null
//             // : "${releaseDate.year.toString().padLeft(4, '0')}-${releaseDate.month.toString().padLeft(2, '0')}-${releaseDate.day.toString().padLeft(2, '0')}",
//         // "video": video == null ? null : video,
//         // "vote_average": voteAverage,
//         // "vote_count": voteCount,
//         "name": name == null ? null : name,
//         "original_name": originalName == null ? null : originalName,
//         // "first_air_date": firstAirDate == null
//             // ? null
//             // : "${firstAirDate.year.toString().padLeft(4, '0')}-${firstAirDate.month.toString().padLeft(2, '0')}-${firstAirDate.day.toString().padLeft(2, '0')}",
//         // "origin_country": originCountry == null
//             // ? null
//             // : List<dynamic>.from(originCountry.map((x) => x)),
//       };
// }

// // enum MediaType { MOVIE, TV }

// // final mediaTypeValues =
// //     EnumValues({"movie": MediaType.MOVIE, "tv": MediaType.TV});

// // enum OriginalLanguage { EN, DE, KO }

// // final originalLanguageValues = EnumValues({
// //   "de": OriginalLanguage.DE,
// //   "en": OriginalLanguage.EN,
// //   "ko": OriginalLanguage.KO
// // });

// // class EnumValues<T> {
// //   Map<String, T> map;
// //   Map<T, String> reverseMap;

// //   EnumValues(this.map);

// //   Map<T, String> get reverse {
// //     if (reverseMap == null) {
// //       reverseMap = map.map((k, v) => new MapEntry(v, k));
// //     }
// //     return reverseMap;
// //   }
// // }
