// import 'dart:convert';
import 'dart:io';
// import 'package:crypto/crypto.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path_provider/path_provider.dart';
import 'package:pharaohs_path/core/colors/colors.dart';
import 'package:pharaohs_path/core/strings/strings.dart';
import 'package:pharaohs_path/core/utils/size_config.dart';
import 'package:pharaohs_path/core/widgets/button.dart';
import 'package:pharaohs_path/core/widgets/dialog.dart';
import 'package:pharaohs_path/data/models/user_model.dart';
import 'package:pharaohs_path/data/preferences/shared_preferences.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  static User user = User.fromSharedPrefs(SharedPrefs().getUser());

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _img(),
            SizeConfig().vSpace(1),
            _name(),
            SizeConfig().vSpace(7),
            _container(ProfileScreen.user.email, false),
            SizeConfig().vSpace(2),
            _container(ProfileScreen.user.pass, true),
            SizeConfig().vSpace(7),
            _logOut(),
            SizeConfig().vSpace(3),
            _deleteAccount(),
          ],
        ),
      ),
    );
  }

// Displays the user's profile image or the default image and allows the user to edit it.
  Widget _img() {
    File file = File(SharedPrefs().getImgPath());

    return SafeArea(
      child: Center(
        child: ClipOval(
          child: Stack(alignment: Alignment.bottomCenter, children: [
            Container(
              height: SizeConfig.defaultSize! * 20,
              width: SizeConfig.defaultSize! * 20,
              color: kGrey,
              child: file.path == ''
                  ? Image.asset('assets/images/logo.png')
                  : Image.file(
                      file,
                      fit: BoxFit.contain,
                    ),
            ),
            _editImg(),
          ]),
        ),
      ),
    );
  }

// An overlayed icon that opens the image source dialog for selecting or capturing an image.
  Widget _editImg() {
    return InkWell(
      onTap: () => _imgSourceDialog(),
      child: Opacity(
        opacity: 0.7,
        child: Container(
          width: SizeConfig.defaultSize! * 20,
          height: SizeConfig.defaultSize! * 7,
          color: kGrey,
          child: const Icon(
            Icons.edit_rounded,
            size: 30,
          ),
        ),
      ),
    );
  }

// Displays the user’s name.
  Widget _name() {
    return Center(
      child: Text(
        ProfileScreen.user.name,
        style: const TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

// Used to display the email and password fields inside a styled container.
  Widget _container(String txt, bool isPass) {
    return Container(
      padding: const EdgeInsets.all(12),
      height: SizeConfig.defaultSize! * 5,
      width: SizeConfig.screenWidth,
      decoration: kBgColor(15),
      child: _txt(txt, isPass),
    );
  }

// Displays the text for email or password, with password being hashed.
  Widget _txt(String txt, bool isPass) {
    return Text(
      isPass ? _hashedPass(txt) : '${kEmail.capitalizeFirst}: $txt',
      style: const TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
        color: kWhite,
      ),
    );
  }

  String _hashedPass(String txt) {
    // final bytes = utf8.encode(txt); // Convert the password to bytes
    // final digest = sha256.convert(bytes); // Hash the password using SHA256
    // return digest.toString();

    return ('${kPassword.capitalizeFirst}: ${'#' * txt.length} ');
  }

// Displays the logout button.
  Widget _logOut() {
    return Center(
      child: PharaohButton(
        text: kLogout,
        onPress: () => _logout(),
        width: SizeConfig.defaultSize! * 2,
        height: SizeConfig.defaultSize! * 1.3,
      ),
    );
  }

  void _logout() {
    SharedPrefs().setLoginState(false);
    Get.offAllNamed('/signin');
  }

// Displays the delete account button.
  Widget _deleteAccount() {
    return Center(
      child: PharaohButton(
        text: kDeleteAcc,
        onPress: () => _delete(),
        width: SizeConfig.defaultSize! * 2,
        height: SizeConfig.defaultSize! * 1.3,
      ),
    );
  }

  void _delete() {
    PharaohDialog().show(
      title: kDeleteAcc,
      desc: _accountDesc(),
      action: kYesPlease,
      onPress: () {
        SharedPrefs().removeAccount();
        Get.offAllNamed('/signup');
      },
    );
  }

// Displays the confirmation message in the delete account dialog.
  Widget _accountDesc() {
    return Expanded(
      child: Center(
        child: Text(kDeleteMsg),
      ),
    );
  }

// Opens a dialog to choose between the camera or gallery for selecting a profile image.
  _imgSourceDialog() {
    PharaohDialog().show(
      title: kImgSource,
      desc: _desc(),
      action: '',
      onPress: () {},
    );
  }

// Handles image picking from either the camera or gallery.
  Widget _desc() {
    return Expanded(
      child: Center(
          child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          InkWell(
            onTap: () => _profileImg(false),
            child: const Icon(Icons.image_rounded, size: 50),
          ),
          InkWell(
            onTap: () => _profileImg(true),
            child: const Icon(Icons.camera_rounded, size: 50),
          ),
        ],
      )),
    );
  }

// Saves the selected image to the app’s documents directory and updates shared preferences.
  _profileImg(bool isCamera) async {
    final ImagePicker picker = ImagePicker();
    XFile? xFile;

    try {
      xFile = isCamera
          ? await picker.pickImage(source: ImageSource.camera)
          : await picker.pickImage(source: ImageSource.gallery);
    } catch (e) {
      debugPrint('=====\n$e\n=====');
    }

    xFile == null ? '' : saveImage(xFile);
    Get.back();
  }

  Future<void> saveImage(XFile image) async {
    try {
      final Directory appDir =
          await getApplicationDocumentsDirectory(); // Get app-specific directory
      final String filePath =
          '${appDir.path}/${DateTime.now().millisecondsSinceEpoch}.jpg'; // Unique filename

      final File newImage = await File(image.path).copy(filePath); // Copy image

      SharedPrefs().setImgPath(newImage.path);
      setState(() {});
    } catch (e) {
      debugPrint("=====\nError saving image: $e\n=====");
    }
  }
}
