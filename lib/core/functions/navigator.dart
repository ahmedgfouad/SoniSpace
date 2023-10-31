import 'package:flutter/material.dart';

// void defaultNavigator(context, Widget nextScreen) {
//   Navigator.of(context).push(
//     FadeTransitionWidet(page: nextScreen),
//   );
// }

void defaultReplacementNavigator(context, Widget nextScreen) {
  Navigator.pushReplacement(
    context,
    MaterialPageRoute(builder: (context) => nextScreen),
  );
}


class DefaultNavigationWidget extends PageRouteBuilder {
  final Widget page;
  DefaultNavigationWidget({required this.page})
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
