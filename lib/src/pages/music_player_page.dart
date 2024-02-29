import 'package:flutter/material.dart';
import 'package:flutter_application_designs/src/widgets/custom_appbar.dart';

import '../widgets/background.dart';
import '../widgets/disc_duration_section.dart';
import '../widgets/lyrics.dart';
import '../widgets/title_play_section.dart';

class MusicPlayerPage extends StatelessWidget {
  const MusicPlayerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: Stack(children: [
      Background(),
      Column(
        children: [
          CustomAppBar(),
          DiscDurationSection(),
          TitlePlaySection(),
          Expanded(
            child: Lyrics(),
          )
        ],
      )
    ]));
  }
}