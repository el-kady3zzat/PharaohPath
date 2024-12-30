import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pharaohs_path/core/colors/colors.dart';
import 'package:pharaohs_path/core/utils/size_config.dart';
import 'package:pharaohs_path/core/widgets/place_card.dart';
import 'package:pharaohs_path/data/models/place_model.dart';
import 'package:pharaohs_path/data/places/places.dart';

class LandmarksScreen extends StatefulWidget {
  const LandmarksScreen({super.key});

  @override
  State<LandmarksScreen> createState() => _LandmarksScreenState();
}

class _LandmarksScreenState extends State<LandmarksScreen> {
  late String gov;
  late List<Place> places;

// Initializes the gov and places variables. It sets the gov variable to the
// argument passed via Get and filters the list of places to include only those
// from the selected governorate.
  @override
  void initState() {
    super.initState();
    gov = Get.arguments;
    places = kPlaces.where((g) => g.governorate.contains(gov)).toList();
  }

// Constructs the UI of the LandmarksScreen, calling the _header, _body,
// and adding spacing between them.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizeConfig().vSpace(0.5),
          _header(),
          SizeConfig().vSpace(0.5),
          _body(),
          SizeConfig().vSpace(1),
        ],
      ),
    );
  }

// Displays a header with a back button on the left and the governorate name centered.
  Widget _header() {
    return SafeArea(
      child: Row(
        children: [
          _backBtn(),
          Expanded(
            child: Center(
              child: Text(
                gov,
                style: const TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

// Displays a back button that navigates to the previous screen when tapped.
  Widget _backBtn() {
    return InkWell(
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
    );
  }

// Displays a list of places from the selected governorate using a ListView.builder.
// Each item is clickable and navigates to the details page when tapped.
  Widget _body() {
    return Expanded(
      child: ListView.builder(
        padding: EdgeInsets.zero,
        itemCount: places.length,
        itemBuilder: (context, index) => InkWell(
            onTap: () {
              Get.toNamed('/details', arguments: places[index]);
            },
            child: PlaceCard(place: places[index])),
      ),
    );
  }
}
