import 'package:flutter/material.dart';
import 'package:sonispace/core/utils/app_images.dart';

class HomeController extends ChangeNotifier {
  List<String> listOfCategyType = [
    "Sounds for you",
    "Most Popular",
    "Most Popular",
  ];
  List<String> popularImages = [
    AppImages.popular1,
    AppImages.popular2,
    AppImages.popular3,
    AppImages.popular4,
    "assets/images/M51-HAWC.png",
    "assets/images/ngc253atlas.jpg",
    AppImages.homeImage,
    AppImages.libraryImage,
  ];

  List<String> soundsForYou = [
    "assets/images/M51-HAWC.png",
    "assets/images/ngc253atlas.jpg",
    "assets/images/ngc7023atlas.jpg",
    "assets/images/nhq202007180001.jpg",
  ];

  List<String> recentPlayer = [
    AppImages.homeImage,
    AppImages.exploreImage,
    AppImages.libraryImage,
    AppImages.popular4,
  ];
}
