import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  const Background({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final screenSizer = MediaQuery.of(context).size;

    return Container(
      width: double.infinity,
      height: screenSizer.height * 1,
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(40)),
          gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.center,
              colors: [Color(0xff333333e), Color(0xff201e28)])),
    );
  }
}
