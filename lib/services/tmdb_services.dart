// import 'package:netflix_clone/models/post.dart';

import 'package:http/http.dart' as http;

// class Services {
//   Future<List<Model>?> getresults() async {
//     var client = http.Client();
//     var uri = Uri.parse(
//         'https://api.themoviedb.org/3/trending/all/day?api_key=5ed28a34cafb5f8a7faaa24497805368');
//     var response = await client.get(uri);
//     if (response.statusCode == 200) {
//       var json = response.body;
//       return

//       ;
//     }
//   }
// }


import 'package:netflix_clone/models/modell3.dart';


Future<Model> getmovies() async {
  try {
    final response = await http.get(Uri.parse(
        'https://api.themoviedb.org/3/trending/all/day?api_key=5ed28a34cafb5f8a7faaa24497805368'));

    final data = modelFromJson(response.body);
    print(data.results![19].originalTitle);
    return data;
  } catch (e) {
    throw 'Nadakoooola';
  }
}

Future<List<Result>> searchQueries(String queries) async {
  try {
    final qresponse = await http.get(Uri.parse(
        'https://api.themoviedb.org/3/search/movie?api_key=5ed28a34cafb5f8a7faaa24497805368&query=$queries'));
    final qdata = modelFromJson(qresponse.body);
    print(qdata.results!.length);
    return qdata.results!;
  } catch (e) {
    throw 'nadanila';
  }
}
