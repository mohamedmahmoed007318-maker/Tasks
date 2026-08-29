void main() {

  print('0°C to Fahrenheit: ${convertTemperature(0, "C")}°F');
  print('100°F to Celsius: ${convertTemperature(100, "F")}°C');

  print('\n--- Task 2: convertCurrency ---');
  print('100 USD to EGP: ${convertCurrency(100, "USD")} EGP');
  print('5000 EGP to USD: ${convertCurrency(5000, "EGP")} USD');

  print('\n--- Task 3: isValidEmail ---');
  print('test@example.com is valid? ${isValidEmail("test@example.com")}');
  print('invalid-email is valid? ${isValidEmail("invalid-email")}');

  print('\n--- Task 4: findLongestWord ---');
  String sentence = "Dart is an amazing programming language";
  print('Sentence: "$sentence"');
  print('Longest word: ${findLongestWord(sentence)}');
}

/// Converts temperature between Celsius and Fahrenheit.
double convertTemperature(double value, String unit) {
  if (unit.toUpperCase() == "C") {
    // Celsius to Fahrenheit: (C * 9/5) + 32
    return (value * 9 / 5) + 32;
  } else if (unit.toUpperCase() == "F") {
    // Fahrenheit to Celsius: (F - 32) * 5/9
    return (value - 32) * 5 / 9;
  } else {
    throw ArgumentError("Invalid unit. Use 'C' or 'F'.");
  }
}

/// Converts currency between USD and EGP.
/// Assumes 1 USD = 50 EGP.
double convertCurrency(double amount, String currencyCode) {
  const double rate = 50.0;
  if (currencyCode.toUpperCase() == "USD") {
    return amount * rate;
  } else if (currencyCode.toUpperCase() == "EGP") {
    return amount / rate;
  } else {
    throw ArgumentError("Invalid currency code. Use 'USD' or 'EGP'.");
  }
}

/// Validates email format using Regex.
bool isValidEmail(String email) {
  final RegExp emailRegex = RegExp(
    r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$',
  );
  return emailRegex.hasMatch(email);
}

/// Finds the longest word in a sentence.
String findLongestWord(String sentence) {
  List<String> words = sentence.split(RegExp(r'\s+'));
  String longest = "";
  for (String word in words) {
    // Clean word of punctuation if necessary (optional)
    String cleanWord = word.replaceAll(RegExp(r'[^\w]'), '');
    if (cleanWord.length > longest.length) {
      longest = cleanWord;
    }
  }
  return longest;
}
