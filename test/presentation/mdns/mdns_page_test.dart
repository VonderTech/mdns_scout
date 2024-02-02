import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mdns_scout/presentation/mdns/mdns_page.dart';

void main() {
  group('MdnsPage', () {
    testWidgets('Renders SearchBar', (tester) async {
      await tester.pumpWidget(const MaterialApp(home: MdnsPage()));

      // Verify that SearchBar is rendered
      expect(find.byType(SearchBar), findsOneWidget);
    });

    testWidgets('Renders search circular progress indicator', (tester) async {
      await tester.pumpWidget(const MaterialApp(home: MdnsPage()));

      // Verify that SearchBar is rendered
      expect(find.byType(CircularProgressIndicator), findsOneWidget);
    });
  });
}
