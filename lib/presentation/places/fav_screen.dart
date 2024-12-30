import 'package:flutter/material.dart';
import 'package:pharaohs_path/core/strings/strings.dart';
import 'package:pharaohs_path/core/widgets/place_card.dart';
import 'package:pharaohs_path/data/places/places.dart';
import 'package:pharaohs_path/data/preferences/shared_preferences.dart';

class FavScreen extends StatelessWidget {
  const FavScreen({super.key});

// Constructs the UI for the FavScreen, displaying a list of favorite places
// stored in SharedPrefs. If no favorites are found, it shows a message
// indicating no favorite places; otherwise, it lists the favorite places using PlaceCard.
  @override
  Widget build(BuildContext context) {
    List<String> ids = SharedPrefs().getFavPlaces();
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(8, 8, 8, 8),
              child: Text(
                kFavPlaces,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Expanded(
            child: ids.isEmpty
                ? Center(
                    child: Text(
                      kNoFavPlaces,
                      style: const TextStyle(
                          fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  )
                : ListView.builder(
                    padding: EdgeInsets.zero,
                    itemCount: ids.length,
                    itemBuilder: (context, index) => PlaceCard(
                      place: kPlaces[int.parse(ids[index])],
                    ),
                  ),
          ),
        ],
      ),
    );
  }
}
