import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:unit_test/screen/home_screen.dart';

void main(){
 testWidgets('Given the counter is 0 when click then counter should be 1', (tester) async{
  await tester.pumpWidget( const MaterialApp(
      home: MyHomePage()
  ),
  );
  final ctr = find.text('0');
  expect(ctr, findsOneWidget);

  final ctr2 = find.text('1');
  expect(ctr2,findsNothing);


//using key (when same nameed widgets present in UI)
  final increment =  find.byKey(const Key('incrementKey'));
  await tester.tap(increment);

  //to rebuild the widget
  await tester.pump();
  final ctr3 = find.text('1');
  expect(ctr3, findsOneWidget);

  final ctr4 = find.text('0');
  expect(ctr4,findsNothing);

  //shotcut one line widget test
  expect(find.byType(AppBar),findsOneWidget);
 });
}