import 'package:flutter/material.dart';
import 'package:flutter_localization_json_getx/localization/demo_localizations.dart';


class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
              final DemoLocalizations langs = DemoLocalizations.of(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Page 2'),
      ),
      body:  Center(
        child: Text(langs.translate('demoText3'))
      ),
    );
  }
}