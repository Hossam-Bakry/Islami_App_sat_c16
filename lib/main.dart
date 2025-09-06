import 'package:flutter/material.dart';
import 'package:islami_app_c16_sat/core/constants/app_routes_name.dart';
import 'package:islami_app_c16_sat/core/theme/app_theme_manager.dart';
import 'package:islami_app_c16_sat/modules/layout/pages/layout_view.dart';
import 'package:islami_app_c16_sat/modules/splash/pages/splash_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: AppThemeManager.appThemeData(),
      initialRoute: AppRoutesName.initial,
      routes: {
        AppRoutesName.initial: (context) => const SplashView(),
        AppRoutesName.layoutRoute: (context) => const LayoutView(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
