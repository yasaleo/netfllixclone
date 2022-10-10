import 'package:flutter/material.dart';
import 'package:netflix_clone/widgets/kvariables.dart';

class VideoListItem extends StatelessWidget {
  const VideoListItem({super.key, required this.index});
  final int index;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: Colors.accents[index % Colors.accents.length],
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                CircleAvatar(
                  backgroundColor: const Color.fromARGB(115, 0, 0, 0),
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.volume_off_rounded,
                      color: kcolorwhite,
                    ),
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: const [
                    CircleAvatar(
                      radius: 28,
                      backgroundImage: NetworkImage(
                          'https://media.gq.com/photos/61fac1d0e9c82d7466e91c02/master/w_2000,h_2667,c_limit/robert-pattinson-gq-cover-march-2022-15_d.jpg'),
                    ),
                    VideoActions(icon: Icons.emoji_emotions, title: 'LOL'),
                    VideoActions(icon: Icons.add, title: 'My List'),
                    VideoActions(icon: Icons.share, title: 'Share'),
                    VideoActions(icon: Icons.play_arrow, title: 'Play'),
                  ],
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}



class VideoActions extends StatelessWidget {
  const VideoActions({
    super.key,
    required this.icon,
    required this.title,
  });

  final IconData icon;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 14),
      child: Column(
        children: [
          Icon(
            icon,
            size: 30,
            shadows: const [BoxShadow(blurRadius: 5, offset: Offset(2, 2))],
          ),
          const SizedBox(
            height: 3,
          ),
          Text(
            title,
            style: const TextStyle(
              shadows: [
              BoxShadow(
                blurRadius: 7,
                offset: Offset(1, 1),
                blurStyle: BlurStyle.outer
              ),
            ],
            fontWeight: FontWeight.w600
            ),
          ),
        ],
      ),
    );
  }
}
