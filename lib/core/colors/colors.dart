import 'package:flutter/material.dart';

const Color kLightBlue = Color(0xFF0172B2);
const Color kDarkBlue = Color(0xFF001645);
const Color kWhite = Color(0xFFFFFFFF);
const Color kGrey = Color(0xFFD6D6D6);
const Color kLightGrey = Color(0xFFFAFAFA);
const Color kLightBlack = Color(0x89000000);

BoxDecoration kBgColor(double borderRadius) {
  return BoxDecoration(
    borderRadius: BorderRadius.circular(borderRadius),
    gradient: const LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: [kLightBlue, kDarkBlue],
    ),
  );
}
