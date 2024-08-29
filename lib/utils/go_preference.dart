import 'package:shared_preferences/shared_preferences.dart';

class GoPreference {
  static Future<bool> readValue() async {
    final SharedPreferences preferences = await SharedPreferences.getInstance();
    return preferences.getBool('key')??false;
  }

  static Future<bool> writeValue(bool value) async {
    final SharedPreferences preferences = await SharedPreferences.getInstance();
    return preferences.setBool('key', value );
  }
}