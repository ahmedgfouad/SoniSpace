import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class DetailsController extends ChangeNotifier {
  static final player = AudioPlayer();
  static Duration duration = Duration.zero;
  // static Duration position = Duration.zero;

  static bool isPlaying = false; 

  List<String> listOfAudio = [
    "sounds/angelical-pad-143276.mp3",
    "sounds/dark-cinematic-atmosphere-140612.mp3",
    "sounds/interstellar-science-fiction-sounds-8239.mp3",
    "sounds/mixkit-fast-rocket-whoosh-1714.wav",
    "sounds/space-travel-in-outer-space-158427.mp3",
    "sounds/tmosphere-of-a-wild-tropical-planet-136362.mp3",
  ];

  static String formatTime(int seconds) {
    return '${(Duration(seconds: seconds))}'.split('.')[0].padLeft(8, '0');
  }

  static void changPlayerState() {
    player.onPlayerStateChanged.listen((state) {
      isPlaying = state == PlayerState.playing;
    });
  }

  static void changeDuration() {
    player.onDurationChanged.listen((newDuration) {
      duration = newDuration;
    });
  }

  // void changePosition() {
  //   player.onPositionChanged.listen((newPosition) {
  //     position = newPosition;
  //     notifyListeners();
  //   });
  // }
}
