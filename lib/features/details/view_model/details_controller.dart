import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class DetailsController extends ChangeNotifier {
  bool audioStatues = true;

  final player = AudioPlayer();

  Future<void> playAudio({required String url}) async {
    await player.play(UrlSource(url));
    notifyListeners();
  }

  void stopAudio() {
    player.stop();
    notifyListeners();
  }

  void changeStatues() {
    audioStatues = !audioStatues;
    notifyListeners();
  }
}
