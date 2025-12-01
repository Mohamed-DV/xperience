import 'package:flutter/material.dart';
import 'package:spots_xplorer_app/config/localization/app_localizations.dart';

class AsyncAppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  final Future<Map<String, dynamic>> Function() loadTranslations;

  AsyncAppLocalizationsDelegate(this.loadTranslations);

  @override
  bool isSupported(Locale locale) =>
      ['en', 'fr', 'es'].contains(locale.languageCode);

  @override
  Future<AppLocalizations> load(Locale locale) async {
    final translations = await loadTranslations();
    return AppLocalizations(locale, translations);
  }

  @override
  bool shouldReload(AsyncAppLocalizationsDelegate old) => true;
}
