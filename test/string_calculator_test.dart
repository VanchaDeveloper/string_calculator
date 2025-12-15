import 'package:string_calculator/string_calculator.dart';
import 'package:test/test.dart';

void main() {
  test('empty string returns 0', () {
    expect(StringCalculator.add(''), 0);
  });

  test('single number returns value', () {
    expect(StringCalculator.add('1'), 1);
  });
}
