import 'package:flutter/material.dart';
import 'package:flutter_application_designs/src/models/audioplayer_model.dart';
import 'package:flutter_application_designs/src/pages/music_player_page.dart';
import 'package:flutter_application_designs/src/theme/theme.dart';
import 'package:provider/provider.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (_) => new AudioPlayerModel() )],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Music Player',
        theme: myTheme,
        home: MusicPlayerPage(),
      ),
    );
  }
}