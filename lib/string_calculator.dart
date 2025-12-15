// TODO: Put public facing types in this file.

/// Checks if you are awesome. Spoiler: you are.
class StringCalculator {
  static int add(String numbers) {
    if (numbers.isEmpty) return 0;

    if (numbers.length == 1) return int.parse(numbers);

    return 0;
  }
}
