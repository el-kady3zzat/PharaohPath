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

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final GlobalKey<FormState> signupFormKey = GlobalKey<FormState>();
  //
  final GlobalKey<FormFieldState> nameKey = GlobalKey();
  final GlobalKey<FormFieldState> emailKey = GlobalKey();
  final GlobalKey<FormFieldState> phoneKey = GlobalKey();
  final GlobalKey<FormFieldState> passKey = GlobalKey();
  final GlobalKey<FormFieldState> confirmPassKey = GlobalKey();
  //
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController passController = TextEditingController();
  final TextEditingController confirmPassController = TextEditingController();

// Constructs the UI for the Sign-Up screen with a form containing text fields and buttons for user input and navigation.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        color: Colors.grey[50],
        child: Form(
          key: signupFormKey,
          child: ListView(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizeConfig().vSpace(5),
                  const Logo(imagePercent: 10),
                  SizeConfig().vSpace(4),
                  PharaohTextField(
                    controller: nameController,
                    hint: kYourName,
                    icon: Icons.person,
                    fieldKey: nameKey,
                  ),
                  SizeConfig().vSpace(2),
                  PharaohTextField(
                    controller: emailController,
                    hint: kYourEmail,
                    icon: Icons.email,
                    fieldKey: emailKey,
                  ),
                  SizeConfig().vSpace(2),
                  PharaohTextField(
                    controller: phoneController,
                    hint: kYourPhone,
                    icon: Icons.phone_rounded,
                    fieldKey: phoneKey,
                  ),
                  SizeConfig().vSpace(2),
                  PharaohTextField(
                    controller: passController,
                    hint: kYourPassword,
                    icon: Icons.lock,
                    fieldKey: passKey,
                  ),
                  SizeConfig().vSpace(2),
                  PharaohTextField(
                    controller: confirmPassController,
                    hint: kConfirmPassword,
                    icon: Icons.lock,
                    fieldKey: confirmPassKey,
                  ),
                  SizeConfig().vSpace(4),
                  PharaohButton(
                    text: kSignUp,
                    width: 20,
                    height: 15.5,
                    onPress: () {
                      if (signupFormKey.currentState!.validate()) {
                        passController.text == confirmPassController.text
                            ? signUp()
                            : snackbar();
                      }
                    },
                  ),
                  SizeConfig().vSpace(2),
                  _orDivider(),
                  SizeConfig().vSpace(2),
                  PharaohButton(
                    text: kSignIn,
                    width: 20,
                    height: 15.5,
                    onPress: () {
                      Get.offNamed('/signin');
                    },
                  ),
                  SizeConfig().vSpace(5),
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

// Creates a new user object and stores it in shared preferences, then displays a dialog to confirm account creation.
  void signUp() {
    SharedPrefs().addUser(
      user: User(
        name: nameController.text,
        email: emailController.text,
        phone: phoneController.text,
        pass: passController.text,
        isLoggedIn: false,
      ),
    );

    setState(() {});

    dialog();
  }

// Shows a welcome dialog with the user's first name, confirming account creation and navigating to the sign-in screen.
  dialog() {
    PharaohDialog().show(
      title: '$kWelcome ${getFirstName(nameController.text)}!',
      desc: _desc(kAccountCreated),
      action: kThanks,
      onPress: () {
        Get.offAllNamed('/signin');
      },
    );
  }

// Creates a widget to display a centered descriptive message in the dialog.
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
