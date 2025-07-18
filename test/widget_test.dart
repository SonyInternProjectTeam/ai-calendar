// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:ai_calendar_todo_app/main.dart';

void main() {
  testWidgets('App launches and shows splash screen',
      (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MyApp());

    // Verify that our app shows the splash screen with app name.
    expect(find.text('AI Calendar Todo App'), findsOneWidget);
    expect(find.text('AI 기반 스마트 일정 관리'), findsOneWidget);
    expect(find.byIcon(Icons.calendar_today), findsOneWidget);
    expect(find.byType(CircularProgressIndicator), findsOneWidget);
  });
}
