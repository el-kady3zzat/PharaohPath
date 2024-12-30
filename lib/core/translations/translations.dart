import 'package:get/get.dart';
import 'ar.dart';
import 'en.dart';

class PharaohTranslation implements Translations {
// Returns a map of translations for different languages (ar for Arabic and en for English).
// It retrieves the respective language data from the Ar and En classes,
// allowing for easy localization and language switching in the app.
  @override
  Map<String, Map<String, String>> get keys => {
        'ar': Ar().ar,
        'en': En().en,
      };
}
