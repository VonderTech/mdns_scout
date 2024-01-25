import 'package:flutter/material.dart';
import 'package:mdns_scout/l10n/l10n.dart';
import 'package:mdns_scout/presentation/app/themes/color_schemes.g.dart';
import 'package:mdns_scout/presentation/counter/counter_page.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: lightColorScheme,
        // textTheme: GoogleFonts.latoTextTheme(),
      ),
      darkTheme: ThemeData(
        useMaterial3: true,
        colorScheme: darkColorScheme,
        // textTheme: GoogleFonts.latoTextTheme(),
      ),
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      home: const CounterPage(),
    );
  }
}
