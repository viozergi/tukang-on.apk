import 'package:flutter_test/flutter_test.dart';
import 'package:tukang_on/main.dart';

void main() {
  testWidgets('App renders home screen', (WidgetTester tester) async {
    await tester.pumpWidget(const TukangOnApp());
    expect(find.text('TUKANG ON'), findsOneWidget);
  });
}
