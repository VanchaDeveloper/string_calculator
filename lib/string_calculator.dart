// TODO: Put public facing types in this file.

/// Checks if you are awesome. Spoiler: you are.
class StringCalculator {
  static int add(String numbers) {
    if (numbers.isEmpty) return 0;

    var delimiterPattern = RegExp(',|\n');
    var data = numbers;

    if (numbers.startsWith('//')) {
      final delimiter = numbers[2];
      delimiterPattern = RegExp(RegExp.escape(delimiter));
      data = numbers.substring(numbers.indexOf('\n') + 1);
    }

    final parts = data.split(delimiterPattern);
    var sum = 0;

    for (final p in parts) {
      sum += int.parse(p);
    }
    return sum;
  }
}
