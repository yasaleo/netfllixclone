import 'dart:math';

import 'package:flutter/material.dart';
import 'package:netflix_clone/widgets/appbar.dart';
import 'package:netflix_clone/widgets/kcolors.dart';

class ScreenDownloads extends StatelessWidget {
  ScreenDownloads({super.key});
  final images = [
    const NetworkImage(
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSlfTsJIEpggkIgOwR-CZNsHfGU8l6irrrVVAYJpzDFQlj5zioC',
    ),
    const NetworkImage(
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQTWAGd_cnIhRTyGa8nohaH9Ujk9OAhCpMH1F3MnU5Ju_6h_dgf'),
    const NetworkImage(
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSkFNNKp6zVnJW0LSgA8UrJikGnr6pcZSBQS33xA1HWuDFXkqUK'),
  ];
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(50),
        child: AppbarWidget(data: 'Downloads'),
      ),
      body: ListView(
        children: [
          Row(
            children: [
              SizedBox(
                width: size.width * .02,
              ),
              const Icon(Icons.settings),
              SizedBox(
                width: size.width * .02,
              ),
              const Text('Smart Downloads')
            ],
          ),
          const Text(
            'Indroducing Downloads for You',
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700),
          ),
          const Text(
              "We'll download a personlised selection of movies and shows for you, so there is always something to watch on your device "),
          SizedBox(
            height: size.width,
            width: size.width,
            child: Stack(
              alignment: Alignment.center,
              children: [
                CircleAvatar(
                  backgroundColor: kcolorgrey,
                  radius: size.width * .39,
                ),
                Stackedimages(
                  images: images[0],
                  angle: -24,
                  margin: const EdgeInsets.only(right: 190),
                  sizeheight: .56,
                ),
                Stackedimages(
                  images: images[1],
                  angle: 24,
                  margin: const EdgeInsets.only(left: 190),
                  sizeheight: .56,
                ),
                Stackedimages(
                  images: images[2],
                  margin: const EdgeInsets.only(top: 20),
                  sizeheight: .64,
                )
              ],
            ),
          ),
          MaterialButton(
            color: kcolorblue,
            onPressed: () {},
            child: const Text(
              'Set Up',
              style: TextStyle(fontSize: 20),
            ),
          ),
          MaterialButton(
            color: kcolorwhite,
            onPressed: () {},
            child: const Text(
              'See what you can download',
              style: TextStyle(
                fontSize: 20,
                color: kcolorblack,
              ),
            ),
          )
        ],
      ),
    );
  }
}

class Stackedimages extends StatelessWidget {
  const Stackedimages({
    Key? key,
    required this.images,
    required this.margin,
    required this.sizeheight,
    this.angle = 0,
  }) : super(key: key);

  final NetworkImage images;
  final double angle;
  final EdgeInsets margin;
  final double sizeheight;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Transform.rotate(
      angle: angle * pi / 360,
      child: Container(
        margin: margin,
        height: size.width * sizeheight,
        width: size.width * .4,
        decoration: BoxDecoration(
            boxShadow: const [
              BoxShadow(
                color: kcolorblack,
                blurRadius:11,
              )
            ],
            borderRadius: BorderRadius.circular(7),
            image: DecorationImage(
              fit: BoxFit.cover,
              image: images,
            )),
      ),
    );
  }
}
