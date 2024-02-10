import 'package:flutter/material.dart';
import 'package:flutter_application_designs/src/pages/music_player_page.dart';
import 'package:flutter_application_designs/src/theme/theme.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Music Player',
      theme: myTheme,
      home: MusicPlayerPage(),
    );
  }
}