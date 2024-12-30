import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pharaohs_path/core/colors/colors.dart';
import 'package:pharaohs_path/core/strings/strings.dart';
import 'package:pharaohs_path/core/utils/size_config.dart';
import 'package:pharaohs_path/core/widgets/button.dart';
import 'package:pharaohs_path/core/widgets/dialog.dart';
import 'package:pharaohs_path/core/widgets/logo.dart';
import 'package:pharaohs_path/core/widgets/text_field.dart';
import 'package:pharaohs_path/data/models/user_model.dart';
import 'package:pharaohs_path/data/preferences/shared_preferences.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final GlobalKey<FormState> signinFormKey = GlobalKey<FormState>();
  final GlobalKey<FormFieldState> emailKey = GlobalKey();
  final GlobalKey<FormFieldState> passKey = GlobalKey();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passController = TextEditingController();

// Builds the sign-in screen with input fields, buttons, and validation logic.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        color: Colors.grey[50],
        child: Form(
          key: signinFormKey,
          child: ListView(
            children: [
              Column(
                children: [
                  SizeConfig().vSpace(7),
                  const Logo(imagePercent: 10),
                  SizeConfig().vSpace(6),
                  PharaohTextField(
                    controller: emailController,
                    hint: kYourEmail,
                    icon: Icons.email,
                    fieldKey: emailKey,
                  ),
                  SizeConfig().vSpace(2),
                  PharaohTextField(
                    controller: passController,
                    hint: kYourPassword,
                    icon: Icons.lock,
                    fieldKey: passKey,
                  ),
                  SizeConfig().vSpace(6),
                  PharaohButton(
                    text: kSignIn,
                    width: 20,
                    height: 15.5,
                    onPress: () {
                      if (signinFormKey.currentState!.validate()) {
                        signIn();
                      }
                    },
                  ),
                  SizeConfig().vSpace(2),
                  _orDivider(),
                  SizeConfig().vSpace(2),
                  PharaohButton(
                    text: kSignUp,
                    width: 20,
                    height: 15.5,
                    onPress: () {
                      Get.offNamed('/signup');
                    },
                  ),
                  SizeConfig().vSpace(7),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

// Displays a horizontal divider with "OR" text for visual separation between buttons.
  Widget _orDivider() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        SizeConfig().hSpace(1.6),
        const Expanded(child: Divider(height: 1, color: kLightBlue)),
        SizeConfig().hSpace(1),
        Text(kOr, style: const TextStyle(fontSize: 16, color: kLightBlue)),
        SizeConfig().hSpace(1),
        const Expanded(child: Divider(height: 1, color: kLightBlue)),
        SizeConfig().hSpace(1.6),
      ],
    );
  }

// Extracts the first name from a full name string.
  String getFirstName(String name) {
    return name.contains(' ') ? name.substring(0, name.indexOf(' ')) : name;
  }

// Validates user credentials and navigates accordingly.
  void signIn() {
    List<String> userData = SharedPrefs().getUser();
    User user = User.fromSharedPrefs(userData);

    if (user.email == '') {
      PharaohDialog().show(
        title: kError,
        desc: _desc(kNoAccount),
        action: kSure,
        onPress: () {
          Get.offNamed('/signup');
        },
      );
      return;
    }
    if (emailController.text != user.email) {
      PharaohDialog().show(
        title: kError,
        desc: _desc(kWrongEmail),
        action: kCheckIt,
        onPress: () {
          Get.back();
        },
      );
      return;
    }
    if (passController.text != user.pass) {
      PharaohDialog().show(
        title: kError,
        desc: _desc(kWrongPass),
        action: kCheckIt,
        onPress: () {
          Get.back();
        },
      );
      return;
    }

    PharaohDialog().show(
      title: '$kWelcome $kBack ${getFirstName(user.name)}!',
      desc: _desc(kReadyMsg),
      action: kSure,
      onPress: () {
        SharedPrefs().setLoginState(true);
        Get.offAllNamed('/home');
      },
    );
  }

// Creates a styled description widget for dialogs.
  Widget _desc(String desc) {
    return Expanded(
      child: Center(
        child: Text(
          desc,
          style: const TextStyle(fontSize: 16),
        ),
      ),
    );
  }

// Displays a dialog with customizable title, description, and action button.
  dialog(String title, Widget desc, String action, void Function()? onPress) {
    PharaohDialog().show(
      title: title,
      desc: desc,
      action: action,
      onPress: onPress,
    );
  }

// Displays a snackbar message if the password confirmation doesn't match, alerting the user with a visual notification.
  snackbar() {
    return ScaffoldMessenger.of(context)
      ..hideCurrentSnackBar()
      ..showSnackBar(
        SnackBar(
          content: Text(
            kPasswordMatch,
            style: const TextStyle(fontSize: 16),
          ),
          backgroundColor: Colors.blue[900],
          duration: const Duration(seconds: 3),
        ),
      );
  }
}
