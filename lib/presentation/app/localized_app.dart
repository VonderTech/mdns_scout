import 'package:easy_localization/easy_localization.dart';
import 'package:easy_localization_loader/easy_localization_loader.dart';
import 'package:flutter/widgets.dart';
import 'package:mdns_scout/presentation/app/app.dart';

class LocalizedApp extends StatelessWidget {
  const LocalizedApp({super.key});

  @override
  Widget build(BuildContext context) {
    return EasyLocalization(
      supportedLocales: const [
        Locale('en', 'US'),
        Locale('de', 'DE'),
        Locale('pt', 'PT'),
      ],
      fallbackLocale: const Locale('en', 'US'),
      path: 'assets/langs/langs.csv',
      assetLoader: CsvAssetLoader(),
      child: const App(),
    );
  }
}
