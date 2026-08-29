import 'dart:io';

void main() {
  // 1. Print 'Hello' and name on separate line
  print('Hello\nMohamed');

  // 2. Print 'Hello' and name on the same line
  print('Hello Mohamed');

  // 3. Read name from user and print hello name
  stdout.write('Enter your name: ');
  String name = stdin.readLineSync()!;
  print('hello $name');

  // 4. Full name all capital
  String fullName = "Mohamed Ahmed";
  print(fullName.toUpperCase());

  // 5. Full name all small
  print(fullName.toLowerCase());

  // 6. Reverse a sentence
  String sentence = "Mohamed Mahmoed";
  print(sentence.split('').reversed.join());

  // 7. Remove repeated words
  String text = "Mohamed Mohamed Mahmoed";
  print(text.split(' ').toSet().join(' '));

  // 8. Convert sentence to list
  print(text.split(' '));

  // 9. Number of characters
  print(sentence.length);



  // 11. Positive (1), Negative (-1), or Zero (0)
  int num = 10;
  print(num == 0 ? 0 : (num > 0 ? 1 : -1));

  // 12. Remainder of 16 and 6
  print(16 % 6);

  // 13. Word in sentence
  print("The quick brown fox".contains("fox"));

  // 14. startsWith and endsWith
  String str = "Mohamed Zain";
  print(str.startsWith("M"));
  print(str.endsWith("Z"));
}
