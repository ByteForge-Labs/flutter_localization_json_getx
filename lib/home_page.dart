import 'package:flutter/material.dart';
import 'package:flutter_localization_json_getx/localization/demo_localizations.dart';
import 'package:flutter_localization_json_getx/src/module/page1.dart';
import 'package:flutter_localization_json_getx/src/module/page2.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final DemoLocalizations langs = DemoLocalizations.of(context);

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Localization'),
        actions: [
          PopupMenuButton<String>(
            onSelected: (String result) {
              Get.updateLocale(Locale(result));
            },
            itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
              const PopupMenuItem<String>(
                value: 'en',
                child: Text('English'),
              ),
              const PopupMenuItem<String>(
                value: 'ar',
                child: Text('Arabic'),
              ),
            ],
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(
                'Drawer Header',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              title: const Text('Page 1'),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const Page1(),
                  ),
                );
              },
            ),
            ListTile(
              title: const Text('Page 2'),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const Page2(),
                  ),
                );
                // Add your custom logic here
              },
            ),
          ],
        ),
      ),
      body: Center(child: Text(langs.translate('demoText1'))),
    );
  }
}
