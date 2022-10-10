import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:netflix_clone/pages/screenhome/main_screen_background.dart';
import 'package:netflix_clone/widgets/kvariables.dart';
import 'custom_main_card_list.dart';
import 'main_card_list.dart';

ValueNotifier<bool> scrollnotifier = ValueNotifier(true);

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ValueListenableBuilder(
            valueListenable: scrollnotifier,
            builder: (context, bool value, Widget? _) {
              return NotificationListener<UserScrollNotification>(
                onNotification: (notification) {
                  final ScrollDirection direction = notification.direction;
                  if (direction == ScrollDirection.reverse) {
                    scrollnotifier.value = false;
                  } else {
                    scrollnotifier.value = true;
                  }
                  return true;
                },
                child: Stack(
                  children: [
                    ListView(
                      children: [
                        const MainBackgroundWidget(),
                        kheight,
                        MainCardList(title: 'Released in Past Year'),
                        kheight,
                        MainCardList(title: 'Trending Now'),
                        kheight,
                        const CustomMainCardList(),
                        kheight,
                        MainCardList(title: 'Tense Dramas'),
                        kheight,
                        MainCardList(title: 'South Indian Cinema')
                      ],
                    ),
                    scrollnotifier.value
                        ? Container(
                            decoration: const BoxDecoration(
                                gradient: LinearGradient(
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                    colors: [
                                  Colors.black,
                                  Colors.transparent
                                ])),
                            height: 80,
                            width: double.infinity,
                            // color: Colors.transparent,
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Image.asset(
                                      'assets/Netflix_Symbol_PMS.png',
                                      width: 50,
                                      height: 50,
                                    ),
                                    const Spacer(),
                                    const Icon(
                                      Icons.cast,
                                      size: 32,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Image.asset(
                                        'assets/Screenshot from 2022-10-01 10-12-58.png',
                                        height: 28,
                                        width: 30,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    const Text('TV Shows'),
                                    const Text('Movies'),
                                    Row(
                                      children: const [
                                        Text('Categories'),
                                        Icon(Icons.arrow_drop_down)
                                      ],
                                    ),
                                  ],
                                )
                              ],
                            ),
                          )
                        : kheight
                  ],
                ),
              );
            }),
      ),
    );
  }
}
