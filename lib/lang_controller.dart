import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LangController extends GetxController {
  Locale? locale = const Locale('en');

  void setLocale(String langCode) {
    locale = Locale(langCode);
  }
}
