import 'package:flutter/material.dart';
import 'package:alberto_s_application1/presentation/onboarding_screen/onboarding_screen.dart';
import 'package:alberto_s_application1/presentation/home_screen/home_screen.dart';
import 'package:alberto_s_application1/presentation/vacation_details_screen/vacation_details_screen.dart';
import 'package:alberto_s_application1/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String onboardingScreen = '/onboarding_screen';

  static const String homeScreen = '/home_screen';

  static const String vacationDetailsScreen = '/vacation_details_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    onboardingScreen: (context) => OnboardingScreen(),
    homeScreen: (context) => HomeScreen(),
    vacationDetailsScreen: (context) => VacationDetailsScreen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}
