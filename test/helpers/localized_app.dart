import 'package:easy_localization/easy_localization.dart';
import 'package:easy_localization_loader/easy_localization_loader.dart';
import 'package:flutter/material.dart';

class LocalizedApp extends StatelessWidget {
  const LocalizedApp({required this.widget, super.key});

  final Widget widget;
  @override
  Widget build(BuildContext context) {
    return EasyLocalization(
      path: 'assets/langs/langs.csv',
      assetLoader: CsvAssetLoader(),
      supportedLocales: const [
        Locale('en', 'US'),
        Locale('de', 'DE'),
        Locale('pt', 'PT'),
      ],
      fallbackLocale: const Locale('en', 'US'),
      saveLocale: false,
      child: Builder(
        builder: (context) {
          return MaterialApp(
            locale: EasyLocalization.of(context)!.locale,
            supportedLocales: EasyLocalization.of(context)!.supportedLocales,
            localizationsDelegates: EasyLocalization.of(context)!.delegates,
            home: widget,
          );
        },
      ),
    );
  }
}
