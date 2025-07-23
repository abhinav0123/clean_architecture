import 'dart:async';
import 'package:clean_architecture/config/di/dependency_injection.dart';
import 'package:clean_architecture/config/routes/navigation_service.dart';
import 'package:clean_architecture/config/routes/routes.dart';
import 'package:clean_architecture/config/theme/app_theme.dart';
import 'package:clean_architecture/core/constants/app_string.dart';
import 'package:clean_architecture/core/utils/window.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      statusBarColor: lightModeColors.black.withValues(alpha: 0.2),
      statusBarIconBrightness: Brightness.light,
      statusBarBrightness: Brightness.dark,
    ),
  );

  await setupLocator();
  Future.delayed(const Duration(milliseconds: 1000), () {
    runApp(
      const CleanApp(),
    );
  });
}

class CleanApp extends StatelessWidget {
  const CleanApp({super.key});
  @override
  Widget build(BuildContext context) {
    NavigationService navigationService = sl<NavigationService>();
    Window().adaptDeviceScreenSize(view: View.of(context));
    return Builder(
      builder: (context) {
        return MaterialApp(
          navigatorKey: navigationService.navigatorKey,
          scrollBehavior: const ScrollBehavior().copyWith(overscroll: false),
          theme: ThemeData(
            visualDensity: VisualDensity.standard,
            useMaterial3: false,
            fontFamily: "SF Pro Text",
          ),
          title: AppString.appName,
          debugShowCheckedModeBanner: false,
          // debugShowMaterialGrid: true,
          onGenerateRoute: AppRoutes.generateRoute,
          initialRoute: AppRoutes.homeScreen,
        );
      },
    );
  }
}
