import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LangController extends GetxController {

  void changeLocale(Locale newLocale) {
    Get.updateLocale(newLocale);
  }
}
