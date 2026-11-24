import 'package:bottom_navigator_bar_lab/main.dart';
import 'package:bottom_navigator_bar_lab/screen1.dart';
import 'package:bottom_navigator_bar_lab/screen2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('starts on the Home screen', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());

    expect(find.byType(Screen1), findsOneWidget);
  });

  testWidgets('tapping Alarm shows Screen2', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());

    await tester.tap(find.byIcon(Icons.alarm));
    await tester.pump();

    expect(find.byType(Screen2), findsOneWidget);
  });
}
