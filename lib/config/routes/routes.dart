import 'package:clean_architecture/core/widgets/custom_navigator.dart';
import 'package:clean_architecture/core/widgets/error_screen.dart';
import 'package:clean_architecture/features/home/presentation/pages/home_screen.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  static const homeScreen = "/homeScreen";

  static const transactionHelpPage = '/tranactionHepPage';

  /*
    <<< Transaction Help Page
  */

  static const nachFlexActivationScreen = '/nachFlexActivationScreen';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    return CustomAnimatedNavigator(
      routes[settings.name] ?? const ErrorScreen(),
      settings,
    );
  }

  static Map<String, Widget> routes = {
    homeScreen: const HomeScreen(),
  };
}
