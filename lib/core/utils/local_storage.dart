import 'package:shared_preferences/shared_preferences.dart';
import 'package:spots_xplorer_app/core/models/user_model.dart';

class LocalStorage {
  // static final Logger _log = Logger("LocalStorage");

  static String id = "id";
  static String userName = "username";
  static String email = "email";
  static String tokenKey = "token";
  static String isCompleted = "isCompleted";

  static Future<void> store(UserModel user, String token) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setInt(id, user.id);
    // await prefs.setString(profSubscriptionId);
    await prefs.setString(email, user.email ?? "");
    await prefs.setString(tokenKey, token);
    if (user.subCategories != [] && user.sportingLevel != null) {
      await prefs.setBool(isCompleted, true);
    } else {
      await prefs.setBool(isCompleted, false);
    }

    // Default to empty string
    // await prefs.setString(
    //     profilePicture,
    //     user.media != null && user.media!.isNotEmpty
    //         ? user.media!.first.originalUrl ?? ""
    //         : "");
  }

  static Future<bool> isLoggedIn() async {
    final prefs = await SharedPreferences.getInstance();
    print("TOKEN : ${prefs.getString('token')}");
    return prefs.containsKey("id");
  }

  static Future<bool> isFirstOpen() async {
    final prefs = await SharedPreferences.getInstance();
    final isFirstOpen = prefs.getBool("isFirstOpen") ?? false;
    return isFirstOpen;
  }

  static Future<void> clear() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.clear();
    // await prefs.remove(id);
    // await prefs.remove(userName);
    // await prefs.remove(email);
    // await prefs.remove(phoneNumber);
    // await prefs.remove(roleActive);
  }
}
