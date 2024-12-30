import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pharaohs_path/core/colors/colors.dart';
import 'package:pharaohs_path/core/strings/strings.dart';
import 'package:pharaohs_path/core/utils/size_config.dart';

class PharaohTextField extends StatefulWidget {
  final TextEditingController controller;
  final String hint;
  final IconData icon;
  final GlobalKey<FormFieldState> fieldKey;
  const PharaohTextField({
    super.key,
    required this.controller,
    required this.hint,
    required this.icon,
    required this.fieldKey,
  });

  @override
  State<PharaohTextField> createState() => _SnaporaTextFieldState();
}

class _SnaporaTextFieldState extends State<PharaohTextField> {
  bool _isPasswordVisible = false;
  //
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: TextFormField(
        key: widget.fieldKey,
        controller: widget.controller,
        style: const TextStyle(color: kWhite),
        validator: (value) =>
            widget.hint.contains(kYourPhone) ? null : validation(value),
        cursorColor: kDarkBlue,
        obscureText:
            widget.hint.contains(kPassword) ? !_isPasswordVisible : false,
        keyboardType: widget.hint.contains(kEmail)
            ? TextInputType.emailAddress
            : TextInputType.text,
        decoration: InputDecoration(
          contentPadding:
              EdgeInsets.symmetric(vertical: SizeConfig.screenHeight! * 0.02),
          enabledBorder: border(),
          focusedBorder: border(),
          border: border(),
          filled: true,
          fillColor: kLightBlue,
          prefixIcon: Icon(
            widget.icon,
            color: kDarkBlue,
          ),
          hintText: widget.hint,
          hintStyle: const TextStyle(color: kGrey),
          suffixIcon: widget.hint.contains(kPassword) ? suffix() : null,
        ),
        onChanged: (value) =>
            widget.hint.contains(kYourPhone) ? null : onChange(),
      ),
    );
  }

// Validates the input value based on the field type (name, email, password, etc.).
// Provides specific error messages for empty fields, invalid formats, and password requirements.
  String? validation(String? value) {
    if (value!.isEmpty) {
      return kRequiredField;
    }
    if (widget.hint.contains(kName) && !value.startsWith(RegExp(r'[A-Z]'))) {
      return kCapitalLetterMsg;
    }
    if (widget.hint.contains(kEmail) && !value.isEmail) {
      return kValidEmailMsg;
    }
    if (widget.hint.contains(kPassword)) {
      return passValidation(value);
    }
    return null;
  }

// Validates the password based on specific criteria: length, uppercase, lowercase, numeric, and special character.
  String? passValidation(String pass) {
    // At least 8 characters
    if (pass.length < 8) {
      return kPassLengthMsg;
    }
    // Contains at least one uppercase letter
    if (!RegExp(r'[A-Z]').hasMatch(pass)) {
      return kUppercaseLetter;
    }
    // Contains at least one lowercase letter
    if (!RegExp(r'[a-z]').hasMatch(pass)) {
      return kLowercaseLetter;
    }
    // Contains at least one number
    if (!RegExp(r'\d').hasMatch(pass)) {
      return kOneNumber;
    }
    // Contains at least one special character
    if (!RegExp(r'[!@#$%^&*(),.?":|<>]').hasMatch(pass)) {
      return kSpecialCharacter;
    }

    return null;
  }

// Triggers field validation when the input changes.
  void onChange() {
    widget.fieldKey.currentState!.validate();
  }

// Returns a custom border style for the input field.
  OutlineInputBorder border() {
    return OutlineInputBorder(
      borderSide: const BorderSide(color: kWhite),
      borderRadius: BorderRadius.circular(20),
    );
  }

// Returns a suffix icon button for password visibility toggle (show/hide password).
  Widget suffix() {
    return IconButton(
      icon: Icon(_isPasswordVisible
          ? Icons.visibility
          : Icons.visibility_off_outlined),
      color: kDarkBlue,
      onPressed: () {
        setState(() {
          _isPasswordVisible = !_isPasswordVisible;
        });
      },
    );
  }
}
