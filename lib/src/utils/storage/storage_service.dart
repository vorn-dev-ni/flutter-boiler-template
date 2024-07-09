import 'package:shared_preferences/shared_preferences.dart';
class StorageService {

  late SharedPreferences _prefs;

  Future<StorageService> init() async {
    _prefs = await SharedPreferences.getInstance();
    return this;
  }

  void setStringKey(String key, String value) async {
    await _prefs.setString(key, value);
  }
  String getStringKey (String key) {

    return _prefs.getString(key) ?? "";
  }
}