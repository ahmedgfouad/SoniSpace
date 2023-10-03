import 'package:flutter/cupertino.dart';
import 'package:sonispace/core/utils/app_images.dart';
import 'package:sonispace/features/explor/explor_view.dart';
import 'package:sonispace/features/home/home_view.dart';
import 'package:sonispace/features/library/library_view.dart';
import 'package:sonispace/features/setting/sittings_view.dart';

class NavBarController extends ChangeNotifier {
    // final drawerContoller = ZoomDrawerController();

  List listOfNavigationBarScreens = const [
    Homeviwe(),
    ExplorView(),
    LibraryView(),
    SettingsView()
  ];
  List<String> listOfNavigationBarIcons = [
    AppImages.homeIcon,
    AppImages.explorIcon,
    AppImages.libraryIcon,
    AppImages.settingIcon,
  ];
  List listOfLables = [
    "Home",
    "Explore",
    "Library",
    "Setting",
  ];

  List listOfAppBarTittle = [
    "IEEE ManCSC",
    "Blogs",
    "Tracks",
  ];

  int curentIndex = 0;

  updateCurentIndex(int index) {
    curentIndex = index;
    notifyListeners();
  }
}
