import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mdns_scout/presentation/mdns/mdns_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../helpers/localized_app.dart';

void main() async {
  setUpAll(() async {
    SharedPreferences.setMockInitialValues({});
    WidgetsFlutterBinding.ensureInitialized();
    await EasyLocalization.ensureInitialized();
  });

  testWidgets('Changes locale if device locale changes', (tester) async {
    await tester.runAsync(() async {
      // Setup
      const widget = MdnsPage();
      const countryCode = 'DE';
      const languageCode = 'de';
      await tester.pumpWidget(const LocalizedApp(widget: widget));
      // The async delegator load will require build on the next frame.
      await tester.pump();
      final BuildContext context = tester.element(find.byType(MdnsPage));

      // Act - Set the device locale
      await tester.binding.setLocale(languageCode, countryCode);
      await tester.pump();
      // Verify that the locale is set
      expect(context.locale.countryCode, equals(countryCode));
      expect(context.locale.languageCode, equals(languageCode));
    });
  });

  testWidgets('Changes locale to fallback local if local is not supported',
      (tester) async {
    await tester.runAsync(() async {
      // Setup
      const widget = MdnsPage();
      const countryCode = 'XX';
      const languageCode = 'XX';
      await tester.pumpWidget(const LocalizedApp(widget: widget));
      // The async delegator load will require build on the next frame.
      await tester.pump();

      // Verify that the locale is set
      final BuildContext context = tester.element(find.byType(MdnsPage));

      // Act - Set the device locale
      await tester.binding.setLocale(languageCode, countryCode);

      expect(context.locale.countryCode, equals('US'));
      expect(context.locale.languageCode, equals('en'));
    });
  });

  testWidgets('Renders search circular progress indicator', (tester) async {
    await tester.runAsync(() async {
      await tester.pumpWidget(const LocalizedApp(widget: MdnsPage()));

      // The async delegator load will require build on the next frame.
      await tester.pump();

      // Verify that SearchBar is rendered
      expect(find.byType(CircularProgressIndicator), findsOneWidget);
    });
  });

  testWidgets('Renders search bar', (tester) async {
    await tester.runAsync(() async {
      await tester.pumpWidget(const LocalizedApp(widget: MdnsPage()));

      // The async delegator load will require build on the next frame.
      await tester.pump();

      // Verify that SearchBar is rendered
      expect(find.byType(SearchBar), findsOneWidget);
    });
  });
}
