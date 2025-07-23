import 'package:flutter/material.dart';

class NavigationService {
  final GlobalKey<NavigatorState> _navigatorKey = GlobalKey<NavigatorState>();
  GlobalKey<NavigatorState> get navigatorKey => _navigatorKey;

  bool _shouldRestart = true;
  bool get shouldRestart => _shouldRestart;

  Future<void> setShouldRestart(bool value) async {
    _shouldRestart = value;
  }
}
