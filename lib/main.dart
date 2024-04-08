import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get/get.dart';
import 'home_page.dart';
import 'localization/demo_localizations_delegate.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
 WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences prefs = await SharedPreferences.getInstance();
  String? savedLanguageCode = prefs.getString('languageCode'); 
  runApp(MyApp(savedLanguageCode: savedLanguageCode ?? 'en'));
}

class MyApp extends StatelessWidget {
  final String savedLanguageCode;

  const MyApp({super.key, required this.savedLanguageCode});

  @override
  Widget build(BuildContext context) {
    
    return  GetMaterialApp(
      supportedLocales: const [Locale('en'), Locale('ar')],
       locale: Locale(savedLanguageCode), 
      localizationsDelegates: const [
        DemoLocalizationsDelegate(),
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      title: 'Localization Demo',
      home: const HomePage(),
    );
  }
}
