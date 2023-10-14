import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:unit_test/screen/animation_screen.dart';

void main() {
  testWidgets('animation screen test', (tester) async {
    await tester.pumpWidget(const MaterialApp(
      home: AnimationScreen(),
    ),
    );

    //INITAIL
    var ContainerFinder = find.byType(Container);
    expect(ContainerFinder,findsOneWidget);
    //tester.widget is used to convert the finder to widget
    //<widgetname> that widget properties can be access
    var conatiner =  tester.widget<Container>(ContainerFinder);
    expect(conatiner.constraints!.minWidth, 0);
    expect(conatiner.constraints!.minHeight, 0);
    // boxDecoration is in decaration and borderRadius is not a properti of decoration
    //0 is not excepted so passed value as BorderRadius.zero for all side
    expect((conatiner.decoration as BoxDecoration).borderRadius,BorderRadius.zero);
    expect((conatiner.decoration as BoxDecoration).color, Colors.blue);


    //after the animation widget changes so pumpAndSettle is used 
    await tester.pumpAndSettle();
    ContainerFinder = find.byType(Container);
    conatiner = tester.widget<Container>(ContainerFinder);
     expect(conatiner.constraints!.minWidth, 200);
    expect(conatiner.constraints!.minHeight, 200);
    expect((conatiner.decoration as BoxDecoration).borderRadius,BorderRadius.circular(50));
    expect((conatiner.decoration as BoxDecoration).color, Colors.green);

  });
}