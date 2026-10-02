// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

import 'package:hello_test/main.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();
  testWidgets('Widget test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MyApp());
    
    expect(find.byKey(const Key('rock_botton')), findsOneWidget);
    expect(find.byKey(const Key('scissor_botton')), findsOneWidget);
    expect(find.byKey(const Key('paper_botton')), findsOneWidget);
    expect(find.byKey(const Key('continue_botton')), findsOneWidget);
    expect(find.byKey(const Key('result_botton')), findsOneWidget);

    await tester.tap(find.byKey(const Key('rock_botton')));
    await tester.tap(find.byKey(const Key('continue_botton')));
    await tester.tap(find.byKey(const Key('paper_botton')));
    await tester.tap(find.byKey(const Key('result_botton')));

    await tester.pumpAndSettle(const Duration(seconds: 3),);

    expect(find.text('player2 win'), findsOneWidget);

    await tester.tap(find.byKey(const Key('rock_botton')));
    await tester.tap(find.byKey(const Key('continue_botton')));
    await tester.tap(find.byKey(const Key('scissor_botton')));
    await tester.tap(find.byKey(const Key('result_botton')));

    await tester.pumpAndSettle(const Duration(seconds: 3),);

    expect(find.text('player1 win'), findsOneWidget);

    await tester.tap(find.byKey(const Key('rock_botton')));
    await tester.tap(find.byKey(const Key('continue_botton')));
    await tester.tap(find.byKey(const Key('rock_botton')));
    await tester.tap(find.byKey(const Key('result_botton')));

    await tester.pumpAndSettle(const Duration(seconds: 3),);

    expect(find.text('draw'), findsOneWidget);
    
  });
}
