import 'package:flutter/material.dart';

class MainCard extends StatelessWidget {
  const MainCard({
    Key? key,
    required this.imgu,
  }) : super(key: key);

  final String imgu;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Container(
        height: 200,
        width: 150,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
            image: NetworkImage(imgu),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
