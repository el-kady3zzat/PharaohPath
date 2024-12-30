import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pharaohs_path/core/colors/colors.dart';
import 'package:pharaohs_path/core/utils/size_config.dart';
import 'package:pharaohs_path/data/models/place_model.dart';
import 'package:pharaohs_path/data/places/places.dart';

class LandmarkDetails extends StatefulWidget {
  const LandmarkDetails({super.key});

  @override
  State<LandmarkDetails> createState() => _LandmarkDetailsState();
}

class _LandmarkDetailsState extends State<LandmarkDetails> {
  final Place place = Get.arguments;

// Constructs the UI for LandmarkDetails, which contains the structure for
// displaying place details.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _body(),
    );
  }

// Creates a column with the place's image, details about the place, and its description.
  Widget _body() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          _img(),
          SizeConfig().vSpace(2),
          _aboutPlace(place.name, place.governorate, place.rate),
          SizeConfig().vSpace(2),
          _desc(),
          SizeConfig().vSpace(1),
        ],
      ),
    );
  }

// Displays the image of the place inside a Stack with a back button overlayed on top of it.
  Widget _img() {
    return SafeArea(
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.asset(
              place.imgPath,
              height: SizeConfig.defaultSize! * 40,
              fit: BoxFit.fill,
            ),
          ),
          _backBtn()
        ],
      ),
    );
  }

// Displays a back button that allows the user to navigate to the previous screen when tapped.
  Widget _backBtn() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: () {
          Get.back();
        },
        child: Card(
          child: Container(
            width: SizeConfig.defaultSize! * 4,
            height: SizeConfig.defaultSize! * 4,
            decoration: kBgColor(10),
            child: const Icon(
              Icons.arrow_back_ios_rounded,
              color: kWhite,
            ),
          ),
        ),
      ),
    );
  }

// Displays the place's name, governorate, and rating in a card layout.
  Widget _aboutPlace(String name, String gov, String rate) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: Container(
        height: SizeConfig.defaultSize! * 6,
        // width: SizeConfig.defaultSize! * 22,
        width: SizeConfig.screenWidth! - 12,
        decoration: kBgColor(15),
        padding: const EdgeInsets.all(8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              name,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: kWhite,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(
                  child: Row(
                    children: [
                      const Icon(
                        Icons.place_rounded,
                        color: kWhite,
                        size: 18,
                      ),
                      const SizedBox(width: 4),
                      Expanded(
                        child: Text(
                          gov,
                          style: const TextStyle(
                            fontSize: 14,
                            color: kWhite,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    const Icon(
                      Icons.star_rounded,
                      color: kWhite,
                      size: 18,
                    ),
                    const SizedBox(width: 4),
                    Text(
                      rate,
                      style: const TextStyle(fontSize: 18, color: kWhite),
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }

// Displays the place's description, which is selectable for copying, based on
// the current locale (Arabic or English). The description text is loaded
// from kArDesc or kEnDesc based on the language.
  Widget _desc() {
    int id = int.parse(place.id);
    return Expanded(
      child: SingleChildScrollView(
        child: SelectableText(
          Get.locale!.languageCode == 'ar' ? kArDesc[id] : kEnDesc[id],
          textAlign: TextAlign.justify,
        ),
      ),
    );
  }
}
