import 'dart:math';

import 'package:flutter_test/flutter_test.dart';
import 'package:unit_test/counter.dart';

void main(){
  late Counter counter;

  setUp((){
    counter =Counter();
  });

  //given when then
  group('Counter class -', () {
  test('given counter class when it is instantiated then the value of counter should be 0', (){
    //Arrange
    // final Counter counter=Counter();
    //Act
    final val = counter.count;
    //Assert
    expect(val, 0);
  });

  test('given counter class when increment there counter then the counter value should be 1', (){
    // final Counter counter=Counter();
    counter.incrementCounter();
    final val=counter.count;
    expect(val, 1);
  });

  test('Given counter class when decrement then the value should be -1', (){
    // final Counter counter  = Counter();
    counter.decremetnCounter();
    final val = counter.count;
    expect(val, -1);
  });

  test('Given Counter class when the reset then the value of counter should be 0', () {
    counter.reset();
    final val = counter.count;
    expect(val, 0);
  });
  });
}