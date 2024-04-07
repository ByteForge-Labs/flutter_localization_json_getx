import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LangController extends GetxController {
  Locale _locale = const Locale('en');

  Locale get locale => _locale;

  void changeLocale(Locale newLocale) {
    _locale = newLocale;
    update(); 
  }
}
