import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class DetailsController extends ChangeNotifier {
  bool audioStatues = false;

  final player = AudioPlayer();

  Future<void> playAudio({required String url}) async {
    await player.play(AssetSource(url));
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

  List<String> listOfAudio = [
    "sounds/angelical-pad-143276.mp3",
    "sounds/dark-cinematic-atmosphere-140612.mp3",
    "sounds/interstellar-science-fiction-sounds-8239.mp3",
    "sounds/mixkit-fast-rocket-whoosh-1714.wav",
    "sounds/space-travel-in-outer-space-158427.mp3",
    "sounds/tmosphere-of-a-wild-tropical-planet-136362.mp3",
  ];
}
