import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix_clone/models/modell3.dart';

import 'package:netflix_clone/pages/searchpage/widgets/searchresult.dart';
import 'package:netflix_clone/services/tmdb_services.dart';

ValueNotifier<List<Result>> datas = ValueNotifier([]);

class ScreenSearch extends StatelessWidget {
  const ScreenSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CupertinoSearchTextField(
                onChanged: (value) async {
                  datas.value = await searchQueries(value.toString());
                },
                suffixIcon: const Icon(
                  CupertinoIcons.xmark_circle_fill,
                ),
                style: const TextStyle(color: Colors.white54),
              ),
              const SizedBox(
                height: 10,
              ),
              // Expanded(child: SearchIdle())
              const Expanded(child: SearchResultWidget())
            ],
          ),
        ),
      ),
    );
  }
}
