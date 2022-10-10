import 'package:flutter/material.dart';
import 'package:netflix_clone/services/tmdb_services.dart';
import '../fast & laugh/video_list_item.dart';
import '../../widgets/kvariables.dart';

class MainBackgroundWidget extends StatelessWidget {
  const MainBackgroundWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ShaderMask(
          blendMode: BlendMode.dstOut,
          shaderCallback: (rect) => const LinearGradient(
              begin: Alignment.center,
              end: Alignment.bottomCenter,
              colors: [Colors.transparent, Colors.black]).createShader(rect),
          child: Container(
            height: 600,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(kimageurl),
                // fit: BoxFit.cover
              ),
            ),
          ),
        ),
        Positioned(
          right: 0,
          bottom: 0,
          left: 0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const VideoActions(icon: Icons.add, title: 'My List'),
              _playbutton(),
              const VideoActions(icon: Icons.info, title: 'Info'),
            ],
          ),
        )
      ],
    );
  }

  TextButton _playbutton() {
    return TextButton.icon(
      style:
          ButtonStyle(backgroundColor: MaterialStateProperty.all(kcolorwhite)),
      onPressed: () {
        
      },
      icon: const Icon(
        Icons.play_arrow,
        size: 25,
        color: Colors.black,
      ),
      label: const Text(
        'Play',
        style: TextStyle(color: Colors.black),
      ),
    );
  }
}
