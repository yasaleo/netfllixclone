import 'package:flutter/material.dart';
import 'package:netflix_clone/models/modell3.dart';
import 'package:netflix_clone/pages/searchpage/screen_search.dart';
import 'package:netflix_clone/pages/searchpage/widgets/searchresult.dart';

import 'package:netflix_clone/widgets/kvariables.dart';

import 'search_title.dart';

const imageurl =
    'https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcRf61mker2o4KH3CbVE7Zw5B1-VogMH8LfZHEaq3UdCMLxARZAB';

class SearchIdle extends StatelessWidget {
  const SearchIdle({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SearchTextTitle(title: 'Top Searches'),
        const SizedBox(
          height: 10,
        ),
        Expanded(
          child: ValueListenableBuilder(
              valueListenable: datas,
              builder: (context, List<Result> data, Widget? _) {
                return data.isNotEmpty
                    ? ListView.separated(
                        itemBuilder: (context, index) {
                          return TopsarchitemTile(result: datas.value[index]);
                        },
                        separatorBuilder: (context, index) => kheight,
                        itemCount: datas.value.length)
                    : GridView.count(
                        crossAxisCount: 3,
                        shrinkWrap: true,
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 10,
                        children:
                            List.generate(30, (index) => const MainCard()),
                      );
              }),
        )

        // FutureBuilder(
        //     future: searchQueries(),
        //     builder: (context, AsyncSnapshot<Model> snapshot) {
        //       return snapshot.connectionState == ConnectionState.done
        //           ? Expanded(
        //               child: ListView.separated(
        //                   shrinkWrap: true,
        //                   itemBuilder: (context, index) => TopsarchitemTile(
        //                       result: snapshot.requireData.results![index]),
        //                   separatorBuilder: (context, index) => const SizedBox(
        //                         height: 10,
        //                       ),
        //                   itemCount: snapshot.requireData.results!.length),
        //             )
        //           : const Center(child: CircularProgressIndicator());
        //     })
      ],
    );
  }
}

class TopsarchitemTile extends StatelessWidget {
  const TopsarchitemTile({super.key, required this.result});
  final Result result;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Row(
      children: [
        Container(
          height: size.width * .22,
          width: size.width * .4,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(6),
            image: DecorationImage(
                image: NetworkImage(
                    'https://image.tmdb.org/t/p/w500${result.backdropPath}'),
                fit: BoxFit.cover),
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Expanded(
          child: Text(
            '${result.originalTitle} ',
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
          ),
        ),
        const Icon(
          Icons.play_circle_outline_rounded,
          size: 40,
        )
      ],
    );
  }
}
