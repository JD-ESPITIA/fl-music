import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_designs/src/models/audioplayer_model.dart';
import 'package:provider/provider.dart';

class DiscImage extends StatelessWidget {
  const DiscImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {


final audioPlayerModel = Provider.of<AudioPlayerModel>(context);


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
              SpinPerfect(
                infinite: true,
                manualTrigger: true,
                controller: (animationController ) => audioPlayerModel.controller = animationController,
                duration: const Duration(seconds: 10),
                child: const Image(
                  image: AssetImage('assets/aurora.jpg'),
                ),
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
