import 'package:flutter/material.dart';
import 'package:netflix_clone/widgets/bottom_navigationbar.dart';
import 'package:netflix_clone/pages/screen_downloads.dart';
import 'package:netflix_clone/pages/screen_fast_and_laughs.dart';
import 'package:netflix_clone/pages/screen_home.dart';
import 'package:netflix_clone/pages/screen_hot_and_new.dart';
import 'package:netflix_clone/pages/screen_search.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final pages = [
    const ScreenHome(),
    const ScreenHotandNew(),
    const ScreenFastandLaugh(),
    const ScreenSearch(),
    const ScreenDownloads()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ValueListenableBuilder(
          valueListenable: currentIndexnotifier,
          builder: (context, int index, child) {
            return pages[index];
          },
        ),
      ),
      bottomNavigationBar: const BottomNavigationbarwidget(),
    );
  }
}
