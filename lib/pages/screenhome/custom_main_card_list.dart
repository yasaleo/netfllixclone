import 'package:bordered_text/bordered_text.dart';
import 'package:flutter/material.dart';
import 'package:netflix_clone/pages/searchpage/widgets/search_idle.dart';

import '../../widgets/kvariables.dart';
import '../../widgets/maincard.dart';
import 'hometitle.dart';

class CustomMainCardList extends StatelessWidget {
  const CustomMainCardList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const HomeTitle(title: 'Top 10 TV Shows in India Today'),
        kheight,
        LimitedBox(
          maxHeight: 210,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: List.generate(
              10,
              (index) {
                return Stack(
                  children: [
                    Row(
                      children: const [
                        SizedBox(
                          width: 33,
                        ),
                        MainCard(imgu: imageurl),
                      ],
                    ),
                    Positioned(
                      left: -5,
                      top: 60,
                      child: BorderedText(
                        strokeWidth: 4,
                        strokeColor: kcolorwhite,
                        child: Text(
                          '${index + 1}',
                          style: const TextStyle(
                              fontSize: 150,
                              color: Color.fromARGB(255, 41, 41, 41)),
                        ),
                      ),
                    )
                  ],
                );
              },
            ),
          ),
        )
      ],
    );
  }
}
