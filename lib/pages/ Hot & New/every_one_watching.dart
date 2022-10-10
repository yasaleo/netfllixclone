import 'dart:math';

import 'package:flutter/material.dart';

import '../../widgets/kvariables.dart';
import '../fast & laugh/video_list_item.dart';

class Everywatching extends StatelessWidget {
  const Everywatching({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 500,
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
         
          Stack(
            alignment: Alignment.bottomRight,
            children: [
              Image.network(
                keverywatching,
                height: 240,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CircleAvatar(
                  backgroundColor: const Color.fromARGB(115, 0, 0, 0),
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.volume_off_rounded,
                      color: kcolorwhite,
                    ),
                  ),
                ),
              ),
            ],
          ),
          kheight,
          Row(
            children: [
              Image.network(
                keverywatching2,
                height: 70,
                width: 130,
              ),
              const Spacer(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Transform.rotate(
                    angle: -85 * pi / 360,
                    child: const Icon(
                      Icons.send_outlined,
                      size: 30,
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const Text(
                    'Share',
                    style: TextStyle(shadows: [
                      BoxShadow(
                          blurRadius: 7,
                          offset: Offset(1, 1),
                          blurStyle: BlurStyle.outer),
                    ], fontWeight: FontWeight.w600),
                  )
                ],
              ),
              const SizedBox(
                width: 10,
              ),
              const VideoActions(icon: Icons.add_outlined, title: 'My List'),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: VideoActions(icon: Icons.play_arrow, title: 'Play'),
              ),
            ],
          ),
          Row(
            children: [
              Image.asset(
                'assets/Netflix_Symbol_PMS.png',
                height: 36,
                width: 36,
              ),
              const Text(
                'FILM',
                style: TextStyle(fontSize: 10, letterSpacing: 4),
              )
            ],
          ),
          const Text(
            'Peaky Blinders',
            style: TextStyle(fontSize: 26, fontWeight: FontWeight.w700),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 10, right: 15),
            child: Text(
              'Tommy Shelby, a dangerous man, leads the Peaky Blinders, a gang based in Birmingham. Soon, Chester Campbell, an inspector, decides to nab him and put an end to the criminal activities.',
              style: TextStyle(fontSize: 15, color: Colors.grey),
            ),
          ),
           const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
