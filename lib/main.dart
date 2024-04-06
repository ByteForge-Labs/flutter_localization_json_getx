import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get/get.dart';
import 'home_page.dart';
import 'lang_controller.dart';
import 'localization/oneword_localizations_delegate.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      title: 'Localization Demo',
      home: HomeWithLanguage(),
    );
  }
}

class HomeWithLanguage extends StatelessWidget {
  const HomeWithLanguage({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<LangController>(
      init: LangController(), // Initialize LangController
      builder: (controller) {
        return MaterialApp(
          locale: controller.locale,
          supportedLocales: const [Locale('en'), Locale('ar')],
          localizationsDelegates: const [
            OnewordLocalizationsDelegate(),
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          title: 'Localization Demo',
          home: const HomePage(),
        );
      },
    );
  }
}
