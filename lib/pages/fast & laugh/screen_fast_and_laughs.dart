import 'package:flutter/material.dart';
import 'package:netflix_clone/pages/fast%20&%20laugh/video_list_item.dart';

class ScreenFastandLaugh extends StatelessWidget {
  const ScreenFastandLaugh({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: PageView(
        
        scrollDirection: Axis.vertical,
        
        children: List.generate(20, (index) {
          return VideoListItem(index: index,);
        }),
      ),
    ));
  }
}
