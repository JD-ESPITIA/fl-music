import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_designs/src/models/audioplayer_model.dart';
import 'package:provider/provider.dart';

class TitlePlaySection extends StatefulWidget {
  const TitlePlaySection({
    super.key,
  });

  @override
  State<TitlePlaySection> createState() => _TitlePlaySectionState();
}

class _TitlePlaySectionState extends State<TitlePlaySection>
    with SingleTickerProviderStateMixin {
  bool isPlaying = false;
  bool firstTime = true;
  late AnimationController playAnimation;
  final assetAudioPlayer = AssetsAudioPlayer();

  @override
  void initState() {
    playAnimation = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 500));
    super.initState();
  }

  @override
  void dispose() {
    playAnimation.dispose();
    super.dispose();
  }

  void open() {
    final audioPlayerModel =
        Provider.of<AudioPlayerModel>(context, listen: false);

    //! assetAudioPlayer.open('assets/Breaking-Benjamin-Far-Away.mp3');
    assetAudioPlayer.open(Audio('assets/Breaking-Benjamin-Far-Away.mp3'),
        autoStart: true, showNotification: true);

    assetAudioPlayer.currentPosition.listen((duration) {
      audioPlayerModel.currentTime = duration;
    });

    assetAudioPlayer.current.listen((playingAudio) {
      //! audioPlayerModel.songDuration = playingAudio.duration;
      audioPlayerModel.songDuration =
          playingAudio?.audio.duration ?? Duration(seconds: 0);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      margin: const EdgeInsets.all(54),
      child: Row(
        children: [
          Column(
            children: [
              Text(
                'Los libros',
                style: TextStyle(
                    fontSize: 30, color: Colors.white.withOpacity(0.8)),
              ),
              Text(
                '-Invisible-',
                style: TextStyle(
                    fontSize: 15, color: Colors.white.withOpacity(0.9)),
              )
            ],
          ),
          const Spacer(),
          FloatingActionButton(
            backgroundColor: const Color(0xfff8cb51),
            onPressed: () {
              final audioPlayerModel =
                  Provider.of<AudioPlayerModel>(context, listen: false);
              if (isPlaying) {
                playAnimation.reverse();
                isPlaying = false;
                audioPlayerModel.controller.stop();
              } else {
                playAnimation.forward();
                isPlaying = true;
                audioPlayerModel.controller.repeat();
              }

              if (firstTime) {
                this.open();
                firstTime = false;
              } else {
                assetAudioPlayer.playOrPause();
              }
            },
            child: AnimatedIcon(
                icon: AnimatedIcons.play_pause, progress: playAnimation),
          )
        ],
      ),
    );
  }
}
