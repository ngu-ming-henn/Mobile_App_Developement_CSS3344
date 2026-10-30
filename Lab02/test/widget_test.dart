// This is a basic Flutter widget test.
//
// It builds the Lab 02 app and checks that every section shows up on screen.

import 'package:flutter_test/flutter_test.dart';

import 'package:flutter_project/main.dart';

void main() {
  testWidgets('Lab 02 screen shows all sections', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const StudentInfoApp());
    await tester.pumpAndSettle();

    // Verify the AppBar title.
    expect(find.text('CSS3344 Mobile App Dev - Lab 02'), findsOneWidget);

    // Verify each decomposed section is on screen.
    expect(find.byType(StudentDetailsSection), findsOneWidget);
    expect(find.byType(TitleSection), findsOneWidget);
    expect(find.byType(ImageSection), findsOneWidget);
    expect(find.text('Interactive Pickers (Lab 2.2)'), findsOneWidget);
  });
}
