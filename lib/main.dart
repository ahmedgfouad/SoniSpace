import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:sonispace/features/auth/onboarding_view.dart';
import 'package:sonispace/features/auth/view_model/auth_controller.dart';
import 'package:sonispace/features/bottom_nav_bar/bottom_nav_bar_view.dart';
import 'package:sonispace/features/bottom_nav_bar/view_model/nav_bar_controller.dart';
import 'package:sonispace/features/details/view_model/details_controller.dart';
import 'package:sonispace/features/home/view_model/home_controller.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) => MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (context) => NavBarController()),
          ChangeNotifierProvider(create: (context) => HomeController()),
          ChangeNotifierProvider(create: (context) => DetailsController()),
          ChangeNotifierProvider(create: (context) => AuthController()),
        ],
        builder: (context, child) => MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'SoniSpace',
          theme: ThemeData.dark(),
          home: const NavBarView(),
        ),
      ),
    );
  }
}
/*
*/