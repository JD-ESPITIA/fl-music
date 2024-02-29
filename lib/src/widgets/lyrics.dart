import 'package:flutter/material.dart';
import 'package:flutter_application_designs/src/helpers/helpers.dart';

class Lyrics extends StatelessWidget {
  const Lyrics({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final lyrics = getLyrics();
    return ListWheelScrollView(
      itemExtent: 30,
      diameterRatio: 1.5,
      physics: const BouncingScrollPhysics(),
      children: lyrics
          .map((verse) => Text(verse,
              style: TextStyle(
                  fontSize: 20, color: Colors.white.withOpacity(0.6))))
          .toList(),
    );
  }
}
