import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:netflix_clone/models/model2.dart';
import 'package:netflix_clone/models/post.dart';
import 'package:netflix_clone/services/tmdb_services.dart';
import '../../models/modell3.dart';
import '../../widgets/maincard.dart';
import 'hometitle.dart';

class MainCardList extends StatelessWidget {
   MainCardList({
    Key? key,
    required this.title,
  }) : super(key: key);
  final String title;

  Model? results;

  var isloaded = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        HomeTitle(title: title),
        const SizedBox(
          height: 10,
        ),
        LimitedBox(
          maxHeight: 210,
          child: FutureBuilder(
              future: getmovies(),
              builder: (context, AsyncSnapshot<Model> data) {
                return data.hasData
                    ? ListView(
                        scrollDirection: Axis.horizontal,
                        children:
                            List.generate(data.requireData.results!.length, (index) {
                          return MainCard(
                              imgu:
                                  "https://image.tmdb.org/t/p/w500${data.requireData.results![index].backdropPath!}"
                              );
                        }),
                      )
                    : const Center(child: CircularProgressIndicator());
              }),
        )
      ],
    );
  }
}
