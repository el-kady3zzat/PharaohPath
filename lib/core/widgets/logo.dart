import 'package:flutter/material.dart';
import 'package:pharaohs_path/core/colors/colors.dart';
import 'package:pharaohs_path/core/strings/strings.dart';
import 'package:pharaohs_path/core/utils/size_config.dart';

class Logo extends StatelessWidget {
  final double imagePercent;
  const Logo({super.key, required this.imagePercent});

// Builds a column containing a card with the app logo image and the app name below it.
// The logo size is determined by the imagePercent parameter, and the app name is
// displayed in bold with a specific font size and color.
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
          color: kDarkBlue,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(100),
          ),
          child: Image.asset(
            'assets/images/logo.png',
            height: SizeConfig.defaultSize! * imagePercent,
          ),
        ),
        //
        SizeConfig().vSpace(1),
        Text(
          kAppName,
          style: const TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold,
            color: kDarkBlue,
          ),
        )
      ],
    );
  }
}
