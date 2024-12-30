import 'package:pharaohs_path/data/models/user_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefs {
  static late SharedPreferences prefs;

// Initializes the SharedPreferences instance and sets up default values if certain
// keys don't exist. This includes setting default empty values for favorites (fav),
// an empty string for the profile image path (img), and a default login state (isLoggedIn).
  void init() async {
    prefs = await SharedPreferences.getInstance();
    if (!prefs.containsKey('fav')) await prefs.setStringList('fav', []);
    if (!prefs.containsKey('img')) await prefs.setString('img', '');
    if (!prefs.containsKey('isLoggedIn')) {
      await prefs.setBool('isLoggedIn', false);
    }
  }

// Saves user data such as name, email, phone, password, and login state in SharedPreferences.
  void addUser({required User user}) async {
    await prefs.setStringList(
      'user',
      [
        user.name,
        user.email,
        user.phone,
        user.pass,
        user.isLoggedIn.toString(),
      ],
    );
  }

// Retrieves the user data as a list of strings.
  List<String> getUser() {
    return prefs.getStringList('user')!;
  }

// Extracts and returns the first name of the user by splitting the name string
// at the space character.
  String firstName() {
    User user = User.fromSharedPrefs(getUser());
    return user.name.substring(0, user.name.indexOf(' '));
  }

// Sets the login state (either true or false) to manage whether the user is logged in or not.
  void setLoginState(bool loginState) async {
    await prefs.setBool('isLoggedIn', loginState);
  }

// Retrieves the current login state.
  bool getLoginState() {
    return prefs.getBool('isLoggedIn')!;
  }

// Saves the path to the profile image.
  void setImgPath(String imgPath) async {
    await prefs.setString('img', imgPath);
  }

// Retrieves the path to the stored profile image.
  String getImgPath() {
    return prefs.getString('img')!;
  }

// Saves a list of favorite place IDs to SharedPreferences.
  void setFavPlaces({required List<String> ids}) async {
    await prefs.setStringList('fav', ids);
  }

// Retrieves the list of favorite place IDs.
  List<String> getFavPlaces() {
    return prefs.getStringList('fav')!;
  }

// Resets the user's information by calling addUser with a default user and
// resetting other fields like login state, profile image path, and favorite places.
  void removeAccount() {
    // prefs.remove('user');
    // prefs.remove('isLoggedIn');
    User user =
        User(name: '', email: '', phone: '', pass: '', isLoggedIn: false);
    addUser(user: user);
    setLoginState(false);
    setImgPath('');
    setFavPlaces(ids: []);
  }
}
