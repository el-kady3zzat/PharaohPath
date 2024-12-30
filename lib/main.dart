import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pharaohs_path/core/translations/translations.dart';
import 'package:pharaohs_path/core/utils/size_config.dart';
import 'package:pharaohs_path/data/preferences/shared_preferences.dart';
import 'package:pharaohs_path/presentation/auth/signin_screen.dart';
import 'package:pharaohs_path/presentation/auth/signup_screen.dart';
import 'package:pharaohs_path/presentation/home/home_screen.dart';
import 'package:pharaohs_path/presentation/places/landmark_details.dart';
import 'package:pharaohs_path/presentation/places/landmarks_screen.dart';
import 'package:pharaohs_path/presentation/splash/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // Initiate screen size configuration for responsive UI.
    SizeConfig().init(context);
    // Initialize shared preferences for storing user data locally.
    SharedPrefs().init();

    // A MaterialApp widget with additional GetX features.
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Pharaoh\'s Path',
      theme: appTheme(),
      locale: Get.deviceLocale,
      translations: PharaohTranslation(),
      defaultTransition: Transition.circularReveal,
      transitionDuration: const Duration(seconds: 1),
      initialRoute: '/splash',
      getPages: [
        GetPage(name: '/splash', page: () => const SplashScreen()),
        GetPage(name: '/signin', page: () => const SignInScreen()),
        GetPage(name: '/signup', page: () => const SignUpScreen()),
        GetPage(name: '/home', page: () => const HomeScreen()),
        GetPage(name: '/landmark', page: () => const LandmarksScreen()),
        GetPage(name: '/details', page: () => const LandmarkDetails()),
      ],
    );
  }

  ThemeData appTheme() {
    return ThemeData(
      fontFamily: 'Suwannaphum',
    );
  }
}
