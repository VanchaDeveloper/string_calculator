// TODO: Put public facing types in this file.

/// Checks if you are awesome. Spoiler: you are.
class StringCalculator {
  static int add(String numbers) {
    if (numbers.isEmpty) return 0;

    final negatives = <int>[];

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
      if (p.trim().isEmpty) continue;

      final value = int.parse(p.trim());

      if (value < 0) negatives.add(value);
      sum += value;
    }

    if (negatives.isNotEmpty) {
      throw Exception(
        'negative numbers not allowed ${negatives.join(',')}',
      );
    }
    return sum;
  }
}
