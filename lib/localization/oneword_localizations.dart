import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class OnewordLocalizations {
  OnewordLocalizations(this.locale);

  final Locale locale;

  static OnewordLocalizations of(BuildContext context) {
    return Localizations.of<OnewordLocalizations>(
      context,
      OnewordLocalizations,
    )!;
  }

  static Map<String, String>? _localizedValues;

  Future<void> load() async {
    String langData = await rootBundle.loadString(
      'assets/langs/${locale.languageCode}.json',
    );
    Map<String, dynamic> jsonData = json.decode(langData);
    _localizedValues = jsonData.map(
      (key, value) => MapEntry(
        key,
        value.toString(),
      ),
    );
  }

  static List<String> languages() => ['en', 'ar'];

  String translate(String key) {
    return _localizedValues![key]!;
  }
}
