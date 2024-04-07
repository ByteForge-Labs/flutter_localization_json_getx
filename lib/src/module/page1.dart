import 'package:flutter/material.dart';
import 'package:flutter_localization_json_getx/lang_controller.dart';
import 'package:flutter_localization_json_getx/localization/demo_localizations.dart';
import 'package:get/get.dart';

class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
          final DemoLocalizations langs = DemoLocalizations.of(context);


    return Scaffold(
      appBar: AppBar(
        title: const Text('page1'),
      ),
      body:  Center(
        child: Text(langs.translate('additionalInfoSubtitle'))
      ),
    );
  }
}
