import 'package:flutter/material.dart';
import 'package:pharaohs_path/core/colors/colors.dart';
import 'package:pharaohs_path/core/utils/size_config.dart';

class PharaohButton extends StatelessWidget {
  final String text;
  final double width;
  final double height;
  final void Function()? onPress;
  const PharaohButton(
      {super.key,
      required this.text,
      required this.onPress,
      required this.width,
      required this.height});

// Creates a custom-styled button using MaterialButton. It takes the provided text,
// width, and height values to customize the button's size and appearance.
// The button's color, padding, and shape are defined, and it triggers the onPress
// callback when pressed.
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPress,
      color: kDarkBlue,
      textColor: kWhite,
      minWidth: SizeConfig.defaultSize! * width,
      padding: EdgeInsets.symmetric(vertical: height, horizontal: width),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: width),
        child: Text(
          text,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
