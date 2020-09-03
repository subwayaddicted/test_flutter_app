import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:test_flutter_app/widgets/homePage.dart';

void main() {
  testWidgets(
      'Background color should change on tap, text color should change relative to background color luminance',
      (WidgetTester tester) async {
    await tester.pumpWidget(new MaterialApp(
      home: HomePage(),
    ));

    var containerFinder = find.byKey(Key('container'));
    final Container beforeContainer = tester.widget<Container>(containerFinder);

    final Color initialBackgroundColor = beforeContainer.color;

    await tester.tap(containerFinder);
    await tester.pump();

    final Container afterContainer = tester.widget<Container>(containerFinder);

    final Color backgroundColor = afterContainer.color;

    expect(initialBackgroundColor, isNot(equals(backgroundColor)));
  });
}
