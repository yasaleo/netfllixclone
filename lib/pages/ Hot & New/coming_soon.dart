import 'package:flutter/material.dart';
import 'package:netflix_clone/services/tmdb_services.dart';

import '../../models/modell3.dart';
import '../../widgets/kvariables.dart';
import '../fast & laugh/video_list_item.dart';

class ComingSoonFIlms extends StatelessWidget {
  const ComingSoonFIlms({
    Key? key,
    required this.size, required this.index,
  }) : super(key: key);

  final Size size;
  final int index;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: getmovies(),
        builder: (context, AsyncSnapshot<Model> data) {
          return data.connectionState == ConnectionState.done
              ? Row(
                  children: [
                    SizedBox(
                      height: 500,
                      width: 50,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: const [
                          Text(
                            'FEB',
                            style: TextStyle(fontSize: 16, color: Colors.grey),
                          ),
                          Text(
                            // '${data.requireData.results?[index].firstAirDate?.day}'
                            '11',
                            style: TextStyle(
                                fontSize: 26, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: size.width - 50,
                      height: 500,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Stack(
                            alignment: Alignment.bottomRight,
                            children: [
                              SizedBox(
                                  width: double.infinity,
                                  height: 180,
                                  child: Image.network(
                                    'https://image.tmdb.org/t/p/w500${data.requireData.results?[index].backdropPath}',
                                    fit: BoxFit.cover,
                                  )),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: CircleAvatar(
                                  backgroundColor:
                                      const Color.fromARGB(115, 0, 0, 0),
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
                              Expanded(
                                child: Text(
                                  '${data.requireData.results?[index].originalTitle}',
                                  style: const TextStyle(
                                      fontSize: 35, letterSpacing: -3),
                                ),
                              ),
                              const Spacer(),
                              const VideoActions(
                                icon: Icons.notifications_none,
                                title: 'Remind Me',
                              ),
                              const Padding(
                                padding: EdgeInsets.symmetric(horizontal: 10),
                                child: VideoActions(
                                  icon: Icons.info_outline,
                                  title: 'Info',
                                ),
                              )
                            ],
                          ),
                          const Text(
                            "Coming on Friday",
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: Colors.grey,
                                fontSize: 19),
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
                                style:
                                    TextStyle(fontSize: 10, letterSpacing: 4),
                              )
                            ],
                          ),
                          Text(
                            '${data.requireData.results?[index].originalTitle}',
                            style: const TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w800),
                          ),
                          kheight,
                          Text(
                            '${data.requireData.results?[index].overview}',
                            maxLines: 2,
                          ),
                          Row(
                            children: const [
                              Spacer(),
                              Icon(
                                Icons.add_rounded,
                                size: 50,
                              )
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                )
              : const Center(child: CircularProgressIndicator());
        });
  }
}
