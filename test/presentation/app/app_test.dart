import 'package:flutter_test/flutter_test.dart';
import 'package:mdns_scout/presentation/app/app.dart';
import 'package:mdns_scout/presentation/mdns/mdns_page.dart';

void main() {
  group('App', () {
    testWidgets('renders CounterPage', (tester) async {
      await tester.pumpWidget(const App());
      expect(find.byType(MdnsPage), findsOneWidget);
    });
  });
}
