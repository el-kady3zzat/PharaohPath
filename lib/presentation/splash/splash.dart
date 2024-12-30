import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pharaohs_path/core/colors/colors.dart';
import 'package:pharaohs_path/core/strings/strings.dart';
import 'package:pharaohs_path/core/utils/size_config.dart';
import 'package:pharaohs_path/data/preferences/shared_preferences.dart';
import 'package:typewritertext/typewritertext.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  bool _isFinished = false;

// Builds the splash screen UI with a title, description, and gradient background.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: kBgColor(0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            _title(),
            SizeConfig().vSpace(4),
            _description(),
          ],
        ),
      ),
    );
  }

// Displays the app's title with a typewriter animation.
  Widget _title() {
    return TypeWriter.text(
      kAppName,
      textAlign: TextAlign.center,
      style: const TextStyle(
        fontSize: 40,
        fontWeight: FontWeight.bold,
        color: kWhite,
      ),
      duration: const Duration(milliseconds: 50),
      onFinished: (value) {
        _isFinished = true;
        setState(() {});
      },
    );
  }

// Displays the welcome message after the title animation finishes.
  Widget _description() {
    return _isFinished
        ? TypeWriter.text(
            kWelcomeMsg,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: kWhite,
            ),
            duration: const Duration(milliseconds: 50),
            onFinished: (value) => _goToNextScreen(),
          )
        : const SizedBox();
  }

// Determines the next screen based on login state and navigates to it.
  void _goToNextScreen() {
    String nextPage =
        SharedPrefs().getLoginState() == true ? '/home' : '/signin';

    Future.delayed(const Duration(seconds: 2), () {
      Get.offNamed(nextPage);
    });
  }
}
