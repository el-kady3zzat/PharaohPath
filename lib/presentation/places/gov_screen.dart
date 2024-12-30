import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pharaohs_path/core/colors/colors.dart';
import 'package:pharaohs_path/core/strings/strings.dart';
import 'package:pharaohs_path/core/utils/size_config.dart';

class GovScreen extends StatelessWidget {
  const GovScreen({super.key});

  static List<String> gov = ['Giza', 'Luxor', 'Aswan', 'Minya'];
  static List<String> img = [
    'sphinx.jpg',
    'hatshepsut_temple.jpg',
    'philae.jpg',
    'beni_hasan.jpg'
  ];

// Constructs the UI for GovScreen, displaying a list of government regions with
// corresponding images. When a region is tapped, it navigates to a detailed page
// using Get.toNamed with the region's name passed as an argument.
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SafeArea(child: _body()));
  }

// Contains a ListView.builder that creates a list of cards, each representing
// a government region with an image and name.
  Widget _body() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(8, 8, 8, 0),
          child: Text(
            kArchGov,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Expanded(
          child: ListView.builder(
            padding: const EdgeInsets.fromLTRB(8, 4, 8, 4),
            itemCount: gov.length,
            itemBuilder: (context, index) => _cardItem(index),
          ),
        ),
      ],
    );
  }

// Creates a card for each region containing an image, region name, and an arrow icon.
  Widget _cardItem(int index) {
    return InkWell(
      onTap: () {
        Get.toNamed('/landmark', arguments: gov[index]);
      },
      child: Container(
          margin: const EdgeInsets.fromLTRB(0, 4, 0, 4),
          height: SizeConfig.defaultSize! * 20,
          decoration: kBgColor(12),
          child: Row(
            children: [
              _img('assets/images/${img[index]}'),
              _gov(gov[index]),
              _arrow()
            ],
          )),
    );
  }

// Displays an image for a specific region with rounded corners.
  Widget _img(String imgPath) {
    return ClipRRect(
      borderRadius: const BorderRadius.only(
        topLeft: Radius.circular(11),
        bottomLeft: Radius.circular(11),
      ),
      child: Image.asset(
        imgPath,
        height: SizeConfig.defaultSize! * 20,
        width: SizeConfig.defaultSize! * 20,
        fit: BoxFit.cover,
      ),
    );
  }

// Displays the name of the region in the center of the card.
  Widget _gov(String name) {
    return Expanded(
      child: Text(
        name,
        textAlign: TextAlign.center,
        style: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: kWhite,
        ),
      ),
    );
  }

// Displays an arrow icon on the right side of the card.
  Widget _arrow() {
    return Container(
      width: SizeConfig.defaultSize! * 3,
      height: SizeConfig.defaultSize! * 20,
      decoration: const BoxDecoration(
          color: kLightBlue,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(11),
            bottomRight: Radius.circular(11),
          )),
      child: const Icon(Icons.arrow_right_rounded, size: 30, color: kWhite),
    );
  }
}
