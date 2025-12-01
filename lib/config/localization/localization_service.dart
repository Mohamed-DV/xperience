import 'dart:io';
import 'package:dio/dio.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:path_provider/path_provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LocalizationService {
  Dio dio = Dio();
  Future<void> loadTranslations() async {
    try {
      // Your logic to fetch translations from a remote source
    } catch (e) {
      loadDefaultTranslations();
    }
  }

  Future<void> loadDefaultTranslations() async {
    print("Loading default translations");
    try {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      String savedLang = prefs.getString("lang") ?? "fr";

      final data = await rootBundle.loadString('assets/lang/$savedLang.json');
      final directory = await getApplicationDocumentsDirectory();
      final file = File('${directory.path}/$savedLang.json');

      if (!await file.exists()) {
        await file.create(recursive: true);
        await file.writeAsString(data);
      }
    } catch (e) {}
  }
}
