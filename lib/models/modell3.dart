// To parse this JSON data, do
//
//     final model = modelFromJson(jsonString);

// ignore_for_file: prefer_if_null_operators

import 'dart:convert';

Model modelFromJson(String str) => Model.fromJson(json.decode(str));

String modelToJson(Model data) => json.encode(data.toJson());

class Model {
  Model({
    this.page,
    this.results,

  });

  int? page;
  List<Result>? results;


  factory Model.fromJson(Map<String, dynamic> json) => Model(
        page: json["page"],
        results:
            List<Result>.from(json["results"].map((x) => Result.fromJson(x))),
      
      );

  Map<String, dynamic> toJson() => {
        "page": page,
        "results": List<dynamic>.from(results!.map((x) => x.toJson())),
       
      };
}

class Result {
  Result({
   
    this.backdropPath,
   
    this.title,
   
    this.originalTitle,
    this.overview,

    this.originalName,
    this.firstAirDate,
  });

  String? backdropPath;
  String ?title;
  String? originalTitle;
  String ?overview;
  String ?originalName;
  DateTime? firstAirDate;

  factory Result.fromJson(Map<String, dynamic> json) => Result(
        backdropPath: json["backdrop_path"],
        title: json["title"] == null ? null : json["title"],
        originalTitle:
            json["original_title"] == null ? null : json["original_title"],
        overview: json["overview"],
        originalName:
            json["original_name"] == null ? null : json["original_name"],
        firstAirDate: json["first_air_date"] == null
            ? null
            : DateTime.parse(json["first_air_date"]),
      );

  Map<String, dynamic> toJson() => {
        "backdrop_path": backdropPath,
        "title": title == null ? null : title,
        "original_title": originalTitle == null ? null : originalTitle,
        "overview": overview,
        "original_name": originalName == null ? null : originalName,
        "first_air_date": firstAirDate == null
            ? null
            : "${firstAirDate!.year.toString().padLeft(4, '0')}-${firstAirDate!.month.toString().padLeft(2, '0')}-${firstAirDate!.day.toString().padLeft(2, '0')}",
      };
}

enum MediaType { MOVIE, TV }

final mediaTypeValues =
    EnumValues({"movie": MediaType.MOVIE, "tv": MediaType.TV});

enum OriginalLanguage { EN, DE, KO }

final originalLanguageValues = EnumValues({
  "de": OriginalLanguage.DE,
  "en": OriginalLanguage.EN,
  "ko": OriginalLanguage.KO
});

class EnumValues<T> {
  Map<String, T> map;
  Map<T, String>? reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    if (reverseMap == null) {
      reverseMap = map.map((k, v) =>  MapEntry(v, k));
    }
    return reverseMap!;
  }
}
