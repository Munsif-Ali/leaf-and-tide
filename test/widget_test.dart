import 'package:flutter_test/flutter_test.dart';

import 'package:fiverr_app/main.dart';

void main() {
  testWidgets('catalog app shows splash and catalog view', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(const LeafAndTideApp());
    expect(find.text('Leaf & Tide'), findsOneWidget);

    await tester.pump(const Duration(milliseconds: 2000));
    await tester.pumpAndSettle();

    expect(find.text('Fresh Market'), findsOneWidget);
    expect(find.text('Popular items'), findsOneWidget);
    expect(find.text('Organic Spinach'), findsOneWidget);
  });
}
