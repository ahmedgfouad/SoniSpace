import 'package:flutter/cupertino.dart';
import 'package:sonispace/core/utils/app_images.dart';
import 'package:sonispace/features/explor/explor_view.dart';
import 'package:sonispace/features/home/home_view.dart';
import 'package:sonispace/features/library/library_view.dart';
import 'package:sonispace/features/setting/settings_view.dart';
import 'package:sonispace/features/upload_image/upload_image_view.dart';

class NavBarController extends ChangeNotifier {

  List listOfNavigationBarScreens = [
    const Homeviwe(),
    const ExplorView(),
    UploadImageView(),
    const LibraryView(),
    const SettingsView()
  ];
  List<String> listOfNavigationBarIcons = [
    AppImages.homeIcon,
    AppImages.exploreIcon,
    AppImages.libraryIcon,
    AppImages.settingIcon,
  ];
  List listOfLables = [
    "Home",
    "Explore",
    "Library",
    "Setting",
  ];
  int currentIndex = 0;

  updateCurrentIndex(int index) {
    currentIndex = index;
    notifyListeners();
  }
}
