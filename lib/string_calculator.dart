class StringCalculator {
  static int add(String numbers) {
    if (numbers.trim().isEmpty) return 0;

    RegExp delimiterPattern = RegExp(',|\n');
    String data = numbers;

    // Custom delimiter
    if (numbers.startsWith('//')) {
      final delimiter = numbers[2];
      delimiterPattern = RegExp(RegExp.escape(delimiter));
      data = numbers.substring(numbers.indexOf('\n') + 1);
    }

    final parts = data.split(delimiterPattern);
    final negatives = <int>[];
    var sum = 0;

    for (final part in parts) {
      if (part.trim().isEmpty) continue;

      final value = int.parse(part.trim());

      if (value < 0) {
        negatives.add(value);
      }

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
