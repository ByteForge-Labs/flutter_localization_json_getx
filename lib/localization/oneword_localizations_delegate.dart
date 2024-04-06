import 'package:flutter/material.dart';

import 'oneword_localizations.dart';

class OnewordLocalizationsDelegate
    extends LocalizationsDelegate<OnewordLocalizations> {
  const OnewordLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) =>
      OnewordLocalizations.languages().contains(locale.languageCode);

  @override
  Future<OnewordLocalizations> load(Locale locale) async {
    OnewordLocalizations localization = OnewordLocalizations(locale);
    await localization.load();

    return localization;
  }

  @override
  bool shouldReload(OnewordLocalizationsDelegate old) => false;
}
