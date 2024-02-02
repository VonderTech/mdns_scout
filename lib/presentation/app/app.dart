import 'package:flutter/material.dart';
import 'package:mdns_scout/l10n/l10n.dart';
import 'package:mdns_scout/presentation/app/themes/theme.dart';
import 'package:mdns_scout/presentation/mdns/mdns_page.dart';

class App extends StatelessWidget {
  const App({super.key});

  //final materialTheme = MaterialTheme(textTheme);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: MaterialTheme.lightScheme().toColorScheme(),
        textTheme: textTheme,
      ),
      darkTheme: ThemeData(
        useMaterial3: true,
        colorScheme: MaterialTheme.darkScheme().toColorScheme(),
        textTheme: textTheme,
      ),
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      home: const MdnsPage(),
    );
  }
}
