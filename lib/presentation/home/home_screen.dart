import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:pharaohs_path/core/colors/colors.dart';
import 'package:pharaohs_path/presentation/places/fav_screen.dart';
import 'package:pharaohs_path/presentation/places/gov_screen.dart';
import 'package:pharaohs_path/presentation/places/places_screen.dart';
import 'package:pharaohs_path/presentation/profile/profile_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int pageIndex = 0;
  final PageController _pageController = PageController();

// Constructs the Home screen UI, which includes a body with
// a PageView and a bottom curved navigation bar.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _body(),
      bottomNavigationBar: _curvedNavBar(),
    );
  }

// Creates a PageView widget that allows the user to swipe between
// different screens (Places, Gov, Fav, and Profile) with a controlled navigation.
  Widget _body() {
    return PageView(
      controller: _pageController,
      physics: const NeverScrollableScrollPhysics(),
      children: const [
        PlacesScreen(),
        GovScreen(),
        FavScreen(),
        ProfileScreen()
      ],
    );
  }

// Builds the curved navigation bar with icons for different screens. It allows
// the user to switch between screens using a tap, and it animates the page transition.
  _curvedNavBar() {
    return CurvedNavigationBar(
      index: pageIndex,
      backgroundColor: Colors.transparent,
      color: kLightBlue,
      items: const [
        Icon(Icons.home_rounded, size: 30, color: kWhite),
        Icon(Icons.place_rounded, size: 30, color: kWhite),
        Icon(Icons.favorite_rounded, size: 30, color: kWhite),
        Icon(Icons.person_rounded, size: 30, color: kWhite),
      ],
      onTap: (index) {
        _pageController.animateToPage(
          index,
          duration: const Duration(milliseconds: 300),
          curve: Curves.bounceInOut,
        );

        setState(() {
          pageIndex = index;
        });
      },
    );
  }

// Disposes of the PageController when the HomeScreen is removed from the
// widget tree to free up resources.
  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }
}
