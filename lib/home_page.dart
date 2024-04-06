import 'package:flutter/material.dart';
import 'package:flutter_localization_json_getx/demo_localization.dart';
import 'package:flutter_localization_json_getx/src/module/page1.dart';
import 'package:flutter_localization_json_getx/src/module/page2.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {

   //  DemoLocalizations.loadLocale(Localizations.localeOf(context));

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Localization'),
        actions: [
          PopupMenuButton<String>(
            onSelected: (String result) {

              DemoLocalizations.changeLanguage(Locale(result));
            },
            itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
              const PopupMenuItem<String>(
                value: 'en',
                child: Text('English'),
              ),
              const PopupMenuItem<String>(
                value: 'fr',
                child: Text('France'),
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
      body:  Center(
        child: Text(DemoLocalizations().translate('lorem'))
      ),
    );
  }
}
