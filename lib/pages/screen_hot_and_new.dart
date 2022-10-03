import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../widgets/appbar.dart';

class ScreenHotandNew extends StatelessWidget {
  const ScreenHotandNew({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: AppbarWidget(data: 'New & Hot')),
      body: Center(
        child: Text('New & Hot'),
      ),
    );
  }
}
