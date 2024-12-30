import 'dart:io';

import 'package:flutter/material.dart';
import 'package:pharaohs_path/core/colors/colors.dart';
import 'package:pharaohs_path/core/strings/strings.dart';
import 'package:pharaohs_path/core/utils/size_config.dart';
import 'package:pharaohs_path/core/widgets/place_card.dart';
import 'package:pharaohs_path/data/models/place_model.dart';
import 'package:pharaohs_path/data/places/places.dart';
import 'package:pharaohs_path/data/preferences/shared_preferences.dart';

class PlacesScreen extends StatelessWidget {
  const PlacesScreen({super.key});

// The main UI of the PlacesScreen is built with padding and two main components:
// the header and body. The header displays a personalized greeting, and the body
// contains two sections for places.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [_header(), _body()],
        ),
      ),
    );
  }

// Displays a greeting message with the user's first name retrieved from shared preferences.
// Displays the user's profile picture. If no image path is saved, a default logo image is shown.
  Widget _header() {
    return SafeArea(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '$kHi, ${SharedPrefs().firstName()} 👋',
                style: const TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizeConfig().vSpace(0.5),
              Text(
                kMsg,
                style: const TextStyle(fontSize: 16, color: kLightBlack),
              ),
            ],
          ),
          ClipOval(
            child: Container(
              height: SizeConfig.defaultSize! * 5,
              width: SizeConfig.defaultSize! * 5,
              color: kGrey,
              child: SharedPrefs().getImgPath() == ''
                  ? Image.asset('assets/images/logo.png')
                  : Image.file(
                      File(SharedPrefs().getImgPath()),
                      fit: BoxFit.contain,
                    ),
            ),
          )
        ],
      ),
    );
  }

// The body contains two main sections: suggested places and popular places.
  Widget _body() {
    return Expanded(
      child: Column(
        children: [
          _suggestedkPlaces(),
          _popularPlaces(),
        ],
      ),
    );
  }

// Displays a list of suggested places in a grid. It uses a GridView.builder to
// show the places in a 2-column grid. Each place is shown using the PlaceCard widget.
  Widget _suggestedkPlaces() {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizeConfig().vSpace(2),
          Text(
            kSugPlaces,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizeConfig().vSpace(1),
          Expanded(
            child: GridView.builder(
              padding: EdgeInsets.zero,
              itemCount: kPlaces.length ~/ 2,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 0.67,
              ),
              itemBuilder: (context, index) => PlaceCard(place: kPlaces[index]),
            ),
          ),
        ],
      ),
    );
  }

// Displays a list of popular places (which is the reverse order of kPlaces) in
// a horizontal scrolling list. The PlaceCard widget is used for each place in the list.
  Widget _popularPlaces() {
    List<Place> popularPlaces = kPlaces.reversed.toList();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizeConfig().vSpace(2),
        Text(
          kPopPlaces,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizeConfig().vSpace(1),
        SizedBox(
          height: SizeConfig.defaultSize! * 30,
          width: double.infinity,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: (kPlaces.length) - (kPlaces.length ~/ 2),
            itemBuilder: (context, index) {
              return PlaceCard(place: popularPlaces[index]);
            },
          ),
        ),
        SizeConfig().vSpace(0.4),
      ],
    );
  }
}
