import 'package:flutter/material.dart';
import 'package:netflix_clone/pages/%20Hot%20&%20New/coming_soon.dart';
import 'package:netflix_clone/widgets/kvariables.dart';

import 'every_one_watching.dart';

class ScreenHotandNew extends StatelessWidget {
  const ScreenHotandNew({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(100),
          child: AppBar(
            elevation: 0,
            backgroundColor: Colors.transparent,
            title: const Text(
              "Hot & New",
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w700,
                  color: kcolorwhite),
            ),
            actions: [
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
              )
            ],
            bottom: const TabBar(
              tabs: [
                Tab(
                  text: '🍿 Coming soon',
                ),
                Tab(
                  text: "👀 Everyone's watching",
                )
              ],
              indicator: BoxDecoration(
                color: kcolorwhite,
                borderRadius: BorderRadius.all(
                  Radius.circular(50),
                ),
              ),
              unselectedLabelColor: kcolorwhite,
              labelColor: kcolorblack,
              labelStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
              isScrollable: true,
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.only(top: 20),
          child: TabBarView(
            children: [
              _comingsoon(context),
              _everonesWatching(),
            ],
          ),
        ),
      ),
    );
  }

  _comingsoon(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return ListView(
        children: List.generate(10, (index) => ComingSoonFIlms(size: size,index: index,)));
  }

  _everonesWatching() {
    return ListView(
        children: List.generate(
      10,
      (index) => const Everywatching(),
    ));
  }
}
