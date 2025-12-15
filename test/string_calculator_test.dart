import 'package:string_calculator/string_calculator.dart';
import 'package:test/test.dart';

void main() {
  test('empty string returns 0', () {
    expect(StringCalculator.add(''), 0);
  });

  test('single number returns value', () {
    expect(StringCalculator.add('1'), 1);
  });

  test('two numbers', () {
    expect(StringCalculator.add('1,5'), 6);
  });

  test('multiple numbers', () {
    expect(StringCalculator.add('1,2,3,4'), 10);
  });

  test('newline delimiter', () {
    expect(StringCalculator.add('1\n2,3'), 6);
  });

  test('custom delimiter', () {
  expect(StringCalculator.add('//;\n1;2'), 3);
});
}
