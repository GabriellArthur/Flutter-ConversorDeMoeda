import 'package:conversor_curso/app/controllers/home_controller.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/material.dart';

main() {
  final TextEditingController toText = TextEditingController();
  final TextEditingController fromText = TextEditingController();
  final homeController = HomeController(toText: toText, fromText: fromText);

  test('conv real to dol', () {
    toText.text = '2.0';
    homeController.convert();
    expect(fromText.text, '0.36');
  });
}
