/*import 'package:get_storage/get_storage.dart';

class GetStorageHelper {
  static const String location = "GETSTORAGEHELPER";

  static const String theme = "THEME";
  static const String langue = "LANGUE";
  static const String token = "TOKEN";
  static const String user = "USER";

  static GetStorage box = GetStorage(location);

  // setter
  static void setToken({required String gtoken}) {
    box.write(token, gtoken);
  }

  static void setUser({required String guser}) {
    box.write(user, guser);
  }

  static void setThme({required bool gtheme}) {
    box.write(theme, gtheme);
  }

  static void setLangue({required String glangue}) {
    box.write(langue, glangue);
  }

  // getter
  static String? getToken() {
    String? gtoken = box.read(token);
    return gtoken;
  }

  static String? getUser() {
    String? guser = box.read(user);
    return guser;
  }

  static bool? getTheme() {
    bool? gtheme = box.read(theme);
    return gtheme;
  }

  static String? getLangue() {
    String? gtoken = box.read(token);
    return gtoken;
  }

  // remove user
  static void remove() {
    box.remove(token);
    box.remove(user);
  }
}
*/