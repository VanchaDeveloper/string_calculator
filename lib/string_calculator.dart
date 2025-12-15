class StringCalculator {
  static int add(String numbers) {
    if (numbers.trim().isEmpty) return 0;

    RegExp delimiterPattern = RegExp(',|\n');
    String data = numbers;

    // Custom delimiter
    if (numbers.startsWith('//')) {
      final headerEnd = numbers.indexOf('\n');
      final delimiterPart = numbers.substring(2, headerEnd);
      data = numbers.substring(headerEnd + 1);

      // Multiple delimiters: //[;][|]
      if (delimiterPart.startsWith('[')) {
        final delimiters = RegExp(r'\[(.*?)\]')
            .allMatches(delimiterPart)
            .map((m) => RegExp.escape(m.group(1)!))
            .join('|');

        delimiterPattern = RegExp(delimiters);
      }
      // Single delimiter: //;
      else {
        delimiterPattern = RegExp(RegExp.escape(delimiterPart));
      }
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
