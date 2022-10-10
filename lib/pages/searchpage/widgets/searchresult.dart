import 'package:flutter/widgets.dart';
import 'package:netflix_clone/pages/searchpage/widgets/search_idle.dart';
import 'package:netflix_clone/pages/searchpage/widgets/search_title.dart';

const imageurlver =
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR4o4eBZdZWCR0iNFjiu1p4BKAIwIOkm_tZr3A-WUu4IAAcrq57';

class SearchResultWidget extends StatelessWidget {
  const SearchResultWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        SearchTextTitle(title: 'Movies & Tv'),
        SizedBox(
          height: 10,
        ),
        Expanded(child: SearchIdle())
      ],
    );
  }
}

class MainCard extends StatelessWidget {
  const MainCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(7),
        image: const DecorationImage(
            image: NetworkImage(imageurlver), fit: BoxFit.cover),
      ),
    );
  }
}
