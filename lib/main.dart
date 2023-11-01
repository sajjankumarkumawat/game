
import 'package:flutter/material.dart';
import 'package:game/view/home_page.dart';

import 'view/scratch_game.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home:  ScratchGame(),
      debugShowCheckedModeBanner: false,
    );
  }
}
