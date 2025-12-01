import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter/services.dart' show rootBundle;

class TranslationLoader {
  Future<Map<String, dynamic>> loadTranslations() async {
    print('TranslationLoader');
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String savedLang = prefs.getString("lang") ?? "fr";
    String jsonString =
        await rootBundle.loadString('assets/lang/$savedLang.json');
    return json.decode(jsonString);
  }
}
