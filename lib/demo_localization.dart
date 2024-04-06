import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:convert';

class DemoLocalizations {
  static Map<String, Map<String, String>> _localizedValues = {};
  static Map<String, String> _localizedStrings = {};

  static Future<void> load(Locale locale) async {
    try {
      String jsonString =
          await rootBundle.loadString('assets/translations.json');
      Map<String, dynamic> jsonMap = json.decode(jsonString);
      _localizedValues = jsonMap.map((key, value) {
        return MapEntry(key, Map<String, String>.from(value));
      });
      loadLocale(locale);
    } catch (e) {
      if (kDebugMode) {
        print('Failed to load translations: $e');
      }
    }
  }

  static void loadLocale(Locale locale) {
    final String langCode = locale.languageCode;
    if (_localizedValues.containsKey(langCode)) {
      _localizedStrings = _localizedValues[langCode]!;
    } else {
      _localizedStrings = _localizedValues['en']!;
    }
  }

  static void changeLanguage(Locale newLocale) {
    loadLocale(newLocale);
  }

  String translate(String key) {
    return _localizedStrings[key]!;
  }
}
