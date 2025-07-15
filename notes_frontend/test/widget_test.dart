import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:notes_frontend/main.dart';

void main() {
  testWidgets('Notes app loads list screen', (WidgetTester tester) async {
    await tester.pumpWidget(const NotesApp());

    expect(find.text('Notes'), findsOneWidget);
    expect(find.byType(FloatingActionButton), findsOneWidget);
  });

  testWidgets('FAB is present for adding new notes', (WidgetTester tester) async {
    await tester.pumpWidget(const NotesApp());

    expect(find.byIcon(Icons.add), findsOneWidget);
  });
}
