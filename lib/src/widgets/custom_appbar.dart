import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        margin: const EdgeInsets.only(top: 30),
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: const Row(
          children: <Widget>[
            Icon(FontAwesomeIcons.chevronLeft),
            Spacer(),
            Icon(FontAwesomeIcons.commentSlash),
            SizedBox(width: 20),
            Icon(FontAwesomeIcons.headphones),
            SizedBox(width: 20),
            Icon(FontAwesomeIcons.share),

          ],
        ),
      
      
      ),
    );
  }
}