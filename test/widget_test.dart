import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:first_app/main.dart';

void main() {
  testWidgets('HomePage widget test', (WidgetTester tester) async {
    await tester.pumpWidget(FirstApp());

    // Verify that the app starts with the HomePage widget
    expect(find.byType(HomePage), findsOneWidget);

    // Verify that the search bar is displayed
    expect(find.byType(TextField), findsOneWidget);

    // Verify that the product cards are displayed
    expect(find.byType(ProductCard), findsNWidgets(3));

    // TODO: Add more specific widget tests as needed

    // Example test: Verify that the first product name is displayed
    expect(find.text('Product 1'), findsOneWidget);

    // Example test: Tap on the first product card and verify the comment dialog
    await tester.tap(find.text('Comment 1 for Product 1'));
    await tester.pumpAndSettle();

    // Verify that the comment dialog is displayed
    expect(find.byType(AlertDialog), findsOneWidget);

    // TODO: Add more specific widget tests for the comment dialog as needed

    // Example test: Close the comment dialog
    await tester.tap(find.text('Close'));
    await tester.pumpAndSettle();

    // Verify that the comment dialog is closed
    expect(find.byType(AlertDialog), findsNothing);
  });
}
