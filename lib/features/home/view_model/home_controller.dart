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
    AppImages.popular5,
    AppImages.popular6,
    
  ]; 
}
