// The User class represents a user with essential details such as name, email,
// phone, password, and isLoggedIn status. It provides two constructors:
class User {
  late String name;
  late String email;
  late String phone;
  late String pass;
  late bool isLoggedIn;

// A constructor that allows you to create a new User instance with all fields
// required (name, email, phone, password, and login state).
  User({
    required this.name,
    required this.email,
    required this.phone,
    required this.pass,
    required this.isLoggedIn,
  });

// This constructor is used to create a User instance from data retrieved from SharedPreferences.
  User.fromSharedPrefs(List<String> userData) {
    name = userData[0];
    email = userData[1];
    phone = userData[2];
    pass = userData[3];
    isLoggedIn = false;
  }
}
