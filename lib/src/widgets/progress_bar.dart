import 'package:flutter/material.dart';
import 'package:flutter_application_designs/src/models/audioplayer_model.dart';
import 'package:provider/provider.dart';

class ProgressBar extends StatelessWidget {
  const ProgressBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final durationStyle = TextStyle(color: Colors.white.withOpacity(0.4));
    final audioPlayerModel = Provider.of<AudioPlayerModel>(context);
    final percent = audioPlayerModel.percent;
    return Container(
      child: Column(children: [
        Text(
          audioPlayerModel.songTotalDuration,
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
                height: 230*percent,
                color: Colors.white.withOpacity(0.8),
              ),
            )
          ],
        ),
        Text(
          audioPlayerModel.currentSecond,
          style: durationStyle,
        ),
      ]),
    );
  }
}
