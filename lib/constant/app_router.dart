import 'package:go_router/go_router.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import '../screens/on_boarding1.dart';
import '../screens/on_boarding2.dart';
import '../screens/on_boarding3.dart';
import '../screens/splash.dart';

class AppRouter {
  static String splashPath = '/';
  static String onBoarding1Path = '/onBoarding1Path';
  static String onBoarding2Path = '/onBoarding2Path';
  static String onBoarding3Path = '/onBoarding3Path';
  static GoRouter router = GoRouter(
    initialLocation: '/',
    routes: [
      GoRoute(
        path: splashPath,
        builder: (context, state) => const Splash(),
      ),  
      GoRoute(
        path: onBoarding1Path,
        builder: (context, state) => const OnBoarding1(),
      ),
      GoRoute(
        path: onBoarding2Path,
        builder: (context, state) => const OnBoarding2(),
      ),
      GoRoute(
        path: onBoarding3Path,
        builder: (context, state) => const OnBoarding3(),
      ),
    ],
  );
}
