import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:mdns_scout/presentation/app/themes/theme.dart';
import 'package:mdns_scout/presentation/mdns/mdns_page.dart';

class App extends StatelessWidget {
  const App({super.key});

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
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      home: const MdnsPage(),
    );
  }
}
