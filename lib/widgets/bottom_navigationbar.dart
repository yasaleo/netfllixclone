import 'package:flutter/material.dart';

final ValueNotifier<int> currentIndexnotifier = ValueNotifier(0);

class BottomNavigationbarwidget extends StatelessWidget {
  const BottomNavigationbarwidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
        valueListenable: currentIndexnotifier,
        builder: (context, int index, Widget? _) {
          return BottomNavigationBar(
            onTap: (value) {
              currentIndexnotifier.value = value;
            },
            type: BottomNavigationBarType.fixed,
            showUnselectedLabels: true,
            elevation: 0,
            unselectedItemColor: Colors.grey,
            selectedIconTheme: const IconThemeData(color: Colors.white),
            selectedItemColor: Colors.white,
            currentIndex: index,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.home), 
                label: 'Home'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.video_library), 
                  label: ' New & Hot'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.sentiment_satisfied_alt),
                  label: 'Fast Laughs'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.search), label: 'Search'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.download_for_offline_outlined),
                  label: 'Downloads'),
            ],
          );
        });
  }
}
