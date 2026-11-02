import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_reading_nook/main.dart';

void main() {
  testWidgets('shows the app title and sample entries', (WidgetTester tester) async {
    await tester.pumpWidget(const DemoApp());
    expect(find.text('Reading Nook'), findsWidgets);
    expect(find.text('The Secret Garden'), findsOneWidget);
  });
}
