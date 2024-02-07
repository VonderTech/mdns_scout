import 'package:easy_localization/easy_localization.dart';
import 'package:easy_localization_loader/easy_localization_loader.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

extension PumpApp on WidgetTester {
  Future<void> pumpApp(Widget widget) {
    return pumpWidget(
      EasyLocalization(
        path: 'assets/langs/langs.csv',
        assetLoader: CsvAssetLoader(),
        supportedLocales: const [
          Locale('en', 'US'),
          Locale('de', 'DE'),
          Locale('pt', 'PT'),
        ],
        fallbackLocale: const Locale('en', 'US'),
        saveLocale: false,
        child: MaterialApp(
          locale: const Locale('en', 'US'),
          supportedLocales: const [
            Locale('en', 'US'),
            Locale('de', 'DE'),
            Locale('pt', 'PT'),
          ],
          home: widget,
        ),
      ),
    );
  }
}
