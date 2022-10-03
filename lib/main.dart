import 'package:flutter/material.dart';
import 'package:netflix_clone/home_page.dart';

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
        brightness: Brightness.dark,
        
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}

