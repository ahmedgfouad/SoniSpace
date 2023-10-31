import 'package:flutter/material.dart';

void defaultNavigator(context, Widget nextScreen) {
  Navigator.of(context).push(
    FadeTransitionWidet(page: nextScreen),
  );
}

void defaultReplacementNavigator(context, Widget nextScreen) {
  Navigator.pushReplacement(
    context,
    MaterialPageRoute(builder: (context) => nextScreen),
  );
}

String getAsset(String image) => 'assets/images/$image.png';

double getHeight(BuildContext context, double fraction,
    {bool subtractAppBar = true}) {
  final mediaQuery = MediaQuery.of(context);
  final appBarHeight = AppBar().preferredSize.height;
  final subtraction =
      subtractAppBar ? (mediaQuery.padding.top + appBarHeight) : 0;
  return (mediaQuery.size.height - subtraction) / fraction;
}

double getWidth(BuildContext context, double fraction) {
  final mediaQuery = MediaQuery.of(context);
  return (mediaQuery.size.width) / fraction;
}

class FadeTransitionWidet extends PageRouteBuilder {
  final Widget page;
  FadeTransitionWidet({required this.page})
      : super(
          pageBuilder: (context, animation, animationtwo) => page,
          transitionsBuilder: (context, animation, animationtwo, child) {
            return FadeTransition(
              opacity: animation,
              alwaysIncludeSemantics: true,
              child: child,
            );
          },
        );
}
