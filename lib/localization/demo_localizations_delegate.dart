import 'package:flutter/material.dart';

import 'demo_localizations.dart';

class DemoLocalizationsDelegate
    extends LocalizationsDelegate<DemoLocalizations> {
  const DemoLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) =>
      DemoLocalizations.languages().contains(locale.languageCode);

  @override
  Future<DemoLocalizations> load(Locale locale) async {
    DemoLocalizations localization = DemoLocalizations(locale);
    await localization.load();

    return localization;
  }

  @override
  bool shouldReload(DemoLocalizationsDelegate old) => false;
}
