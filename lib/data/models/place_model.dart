class Place {
  late String id;
  late String imgPath;
  late String name;
  late String governorate;
  late String rate;
  late bool fav;

// Constructor to create a Place object from a list of shared preferences data.
  Place({
    required this.id,
    required this.imgPath,
    required this.name,
    required this.governorate,
    required this.rate,
    required this.fav,
  });

// Maps the data fields like name, governorate, rate, and fav from the list.
  Place.fromSharedPrefs(List<String> userData) {
    name = userData[0];
    name = userData[0];
    name = userData[1];
    governorate = userData[2];
    rate = userData[3];
    fav = false;
  }
}
