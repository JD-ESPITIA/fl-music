import 'package:flutter/material.dart';
import 'package:flutter_application_designs/src/widgets/disc_image.dart';
import 'package:flutter_application_designs/src/widgets/progress_bar.dart';

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
