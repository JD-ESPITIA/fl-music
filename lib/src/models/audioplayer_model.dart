import 'package:flutter/material.dart';

class AudioPlayerModel with ChangeNotifier {
  bool _playing = false;

  Duration _songDuration = new Duration(milliseconds: 0);
  Duration _currentTime = new Duration(milliseconds: 0);

  String get songTotalDuration => this.printDuration(_songDuration);
  String get currentSecond => this.printDuration(_currentTime);

  double get percent => (_songDuration.inSeconds > 0)
      ? _currentTime.inSeconds / _songDuration.inSeconds
      : 0;

  late AnimationController _controller;
  set controller(AnimationController valor) {
    _controller = valor;
  }

  AnimationController get controller => _controller;

  bool get playing => _playing;
  set playing(bool valor) {
    _playing = valor;
    notifyListeners();
  }

  Duration get songDuration => _songDuration;
  set songDuration(Duration valor) {
    _songDuration = valor;
    notifyListeners();
  }

  Duration get currentTime => _currentTime;
  set currentTime(Duration valor) {
    _currentTime = valor;
    notifyListeners();
  }

  String printDuration(Duration duration) {
    String twoDigits(int n) {
      if (n >= 10) return "$n";
      return "0$n";
    }

    String twoDigitsMinutes = twoDigits(duration.inMinutes.remainder(60));
    String twoDigitsSeconds = twoDigits(duration.inSeconds.remainder(60));
    return "$twoDigitsMinutes:$twoDigitsSeconds";
  }
}
