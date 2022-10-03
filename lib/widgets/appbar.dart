import 'package:flutter/material.dart';

class AppbarWidget extends StatelessWidget {
  const AppbarWidget({super.key, required this.data});
  final String data;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            data,
            style: const TextStyle(fontSize: 25, fontWeight: FontWeight.w700),
          ),
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
        )
      ],
    );
  }
}
