import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pharaohs_path/core/colors/colors.dart';
import 'package:pharaohs_path/core/utils/size_config.dart';

class PharaohDialog {
// Displays a dialog with a custom title, description widget, and an action button.
// The dialog's content is wrapped in a card, and the action button triggers a
// callback function when pressed.
  show({
    required String title,
    required Widget desc,
    required String action,
    required void Function()? onPress,
  }) {
    Get.dialog(
      Center(
        child: SizedBox(
          height: SizeConfig.defaultSize! * 20,
          width: SizeConfig.screenWidth! / 1.2,
          child: Card(
            elevation: 10,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            child: Column(
              children: [
                _title(title),
                desc,
                const Divider(height: 1, color: kLightBlue),
                _action(action, onPress),
              ],
            ),
          ),
        ),
      ),
    );
  }

//Creates a styled container for the dialog's title. The title is displayed with
// a centered alignment and custom font size and color.
  Widget _title(String title) {
    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10),
          topRight: Radius.circular(10),
        ),
        color: kLightBlue,
      ),
      padding: const EdgeInsets.all(12.0),
      width: double.infinity,
      child: Text(
        title,
        textAlign: TextAlign.center,
        style: const TextStyle(color: kWhite, fontSize: 20),
      ),
    );
  }

// Generates a text button for the dialog action, which displays the provided action
// text and triggers the onPress callback when pressed.
  Widget _action(String action, void Function()? onPress) {
    return TextButton(
      onPressed: onPress,
      child: Text(
        action,
        style: const TextStyle(color: kLightBlue, fontSize: 18),
      ),
    );
  }
}
