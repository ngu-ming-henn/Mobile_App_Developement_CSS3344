// This is a basic Flutter widget test.
//
// It builds the Lab 01 app and checks that the student details show up on screen.

import 'package:flutter_test/flutter_test.dart';

import 'package:flutter_project/main.dart';

void main() {
  testWidgets('Lab 01 profile card shows student details', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const StudentInfoApp());

    // Verify the student details are on screen.
    expect(find.text('Ngu Ming Henn'), findsOneWidget);
    expect(find.text('Student ID: BCS24020001'), findsOneWidget);
    expect(find.text('"BECAME A BILLIONAIRE"'), findsOneWidget);
  });
}
