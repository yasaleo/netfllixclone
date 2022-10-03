import 'package:flutter/material.dart';
import 'package:netflix_clone/pages/lobby.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily:GoogleFonts.montserrat().fontFamily ,
        brightness: Brightness.dark,
        primarySwatch: Colors.blue,
      ),
      home:  HomePage(),
    );
  }
}
