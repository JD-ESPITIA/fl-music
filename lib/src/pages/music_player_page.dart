import 'package:flutter/material.dart';
import 'package:flutter_application_designs/src/helpers/helpers.dart';
import 'package:flutter_application_designs/src/widgets/custom_appbar.dart';

class MusicPlayerPage extends StatelessWidget {
  const MusicPlayerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: Column(
      children: [
        CustomAppBar(), 
        DiscDurationSection(),
        TitlePlaySection(),
        Expanded(child: Lyrics(),)
        ],
    ));
  }
}

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
      physics: BouncingScrollPhysics(),
      children: lyrics.map(
          (verse) => Text(verse, style: TextStyle(fontSize: 20, color: Colors.white.withOpacity(0.6)))
      ).toList(),
    );
  }
}

class TitlePlaySection extends StatelessWidget {
  const TitlePlaySection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      margin: const EdgeInsets.all(54),
      child: Row(children: [
        Column(
          children: [
            Text('Los libros', style: TextStyle(fontSize: 30, color: Colors.white.withOpacity(0.8)),),
            Text('-Invisible-', style: TextStyle(fontSize: 15, color: Colors.white.withOpacity(0.9)),)
          ],
        ),
        const Spacer(),
        FloatingActionButton(
          backgroundColor: const Color(0xfff8cb51),
          onPressed: () => {},
          child: const Icon(Icons.play_arrow,color: Colors.black54),
        )
      ],),
    );
  }
}

class DiscDurationSection extends StatelessWidget {
  const DiscDurationSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      margin: const EdgeInsets.only(top: 50),
      child: const Row(children: [
        DiscImage(),
        SizedBox(width: 20),
        ProgressBar(),
        SizedBox(width: 20),
      ]),
    );
  }
}

class ProgressBar extends StatelessWidget {
  const ProgressBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final durationStyle = TextStyle(color: Colors.white.withOpacity(0.4));

    return Container(
      child: Column(children: [
        Text(
          'init',
          style: durationStyle,
        ),
        Stack(
          children: [
            Container(
              width: 3,
              height: 230,
              color: Colors.white.withOpacity(0.1),
            ),
            Positioned(
              bottom: 0,
              child: Container(
                width: 3,
                height: 182,
                color: Colors.white.withOpacity(0.8),
              ),
            )
          ],
        ),
        Text(
          'end',
          style: durationStyle,
        ),
      ]),
    );
  }
}

class DiscImage extends StatelessWidget {
  const DiscImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      width: 250,
      height: 250,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(200),
          gradient: const LinearGradient(
              begin: Alignment.bottomCenter,
              colors: [Color(0xff484750), Color(0xff1e1c24)])),
      child: ClipRRect(
          borderRadius: BorderRadius.circular(300),
          child: Stack(
            alignment: Alignment.center,
            children: [
              const Image(
                image: AssetImage('assets/aurora.jpg'),
              ),
              Container(
                width: 25,
                height: 25,
                decoration: BoxDecoration(
                    color: Colors.black54,
                    borderRadius: BorderRadius.circular(500)),
              ),
              Container(
                width: 18,
                height: 18,
                decoration: BoxDecoration(
                    color: const Color(0xff1c1c25),
                    borderRadius: BorderRadius.circular(500)),
              )
            ],
          )),
    );
  }
}
