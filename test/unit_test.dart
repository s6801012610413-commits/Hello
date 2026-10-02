// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';


import 'package:hello_test/main.dart';

void main() {
  
  group('rock', (){
      
    test('rock rock', () {

      String result = find_result('rock', 'rock');
      expect(result, 'draw');
    });

    test('rock paper', () {

      String result = find_result('rock', 'paper');
      expect(result, 'player2 win');
    });

    test('rock scissor', () {

      String result = find_result('rock', 'scissor');
      expect(result, 'player1 win');
    });
  }
  
  );
  group('paper', (){
      
    test('paper rock', () {

      String result = find_result('paper', 'rock');
      expect(result, 'player1 win');
    });

    test('rock paper', () {

      String result = find_result('paper', 'paper');
      expect(result, 'draw');
    });

    test('rock scissor', () {

      String result = find_result('paper', 'scissor');
      expect(result, 'player2 win');
    });
  }
  
  );

  group('scissor', (){
      
    test('scissor rock', () {

      String result = find_result('scissor', 'rock');
      expect(result, 'player2 win');
    });

    test('scissor paper', () {

      String result = find_result('scissor', 'paper');
      expect(result, 'player1 win');
    });

    test('scissor scissor', () {

      String result = find_result('scissor', 'scissor');
      expect(result, 'draw');
    });
  }
  
  );
}
