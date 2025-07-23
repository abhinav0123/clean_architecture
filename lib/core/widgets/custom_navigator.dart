import 'package:flutter/material.dart';

class CustomAnimatedNavigator extends PageRouteBuilder {
  final Widget page;
  @override
  final RouteSettings settings;

  CustomAnimatedNavigator(this.page, this.settings)
      : super(
          settings: settings,
          pageBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
          ) =>
              page,
          transitionsBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
            Widget child,
          ) =>
              FadeTransition(
            opacity: animation,
            child: child,
          ),
        );
}
