import 'package:data_table_lab/main.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('shows the three cars', (WidgetTester tester) async {
    await tester.pumpWidget(const DataTableLab());

    expect(find.text('Honda'), findsOneWidget);
    expect(find.text('Toyota'), findsOneWidget);
    expect(find.text('BMW'), findsOneWidget);
  });

  testWidgets('tapping Price sorts the cheapest car first', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(const DataTableLab());

    await tester.tap(find.text('Price'));
    await tester.pumpAndSettle();

    final double toyotaY = tester.getTopLeft(find.text('Toyota')).dy;
    final double hondaY = tester.getTopLeft(find.text('Honda')).dy;
    expect(toyotaY, lessThan(hondaY));
  });
}
