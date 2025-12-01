import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;

class AppLocalizations {
  final Locale locale;
  Map<String, dynamic> _localizedStrings;

  AppLocalizations(this.locale, this._localizedStrings);

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  String translate(String key) {
    return _localizedStrings[key] ?? key;
  }

  static Future<Map<String, String>> loadLocaleData(String locale) async {
    String jsonString = await rootBundle.loadString('assets/lang/$locale.json');
    Map<String, dynamic> jsonMap = json.decode(jsonString);
    return jsonMap.map((key, value) => MapEntry(key, value.toString()));
  }
}

class AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  @override
  bool isSupported(Locale locale) =>
      ['en', 'fr'].contains(locale.languageCode);

  @override
  Future<AppLocalizations> load(Locale locale) async {
    var localizedStrings =
        await AppLocalizations.loadLocaleData(locale.languageCode);
    return AppLocalizations(locale, localizedStrings);
  }

  @override
  bool shouldReload(AppLocalizationsDelegate old) =>
      true; // Always reload for demo purposes
}
