import 'dart:io';

void main() {
  // 1. Sum of numbers from start to end

  stdout.write('Enter start number: ');
  int start = int.parse(stdin.readLineSync()!);
  stdout.write('Enter end number: ');
  int end = int.parse(stdin.readLineSync()!);
  int sumRange = 0;
  for (int i = start; i <= end; i++) {
    sumRange += i;
  }
  print('Sum from $start to $end is: $sumRange');

  // 2. Factorial of n

  stdout.write('Enter a non-negative integer: ');
  int n = int.parse(stdin.readLineSync()!);
  int factorial = 1;
  for (int i = 1; i <= n; i++) {
    factorial *= i;
  }
  print('Factorial of $n is: $factorial');

  // 3. Star pyramid

  int rows = 5;
  for (int i = 1; i <= rows; i++) {
    // Spaces
    for (int j = 1; j <= rows - i; j++) {
      stdout.write(' ');
    }
    // Stars
    for (int k = 1; k <= (2 * i - 1); k++) {
      stdout.write('*');
    }
    print('');
  }

  // 4. Reverse a number using math (no split or reversed)

  stdout.write('Enter a positive integer to reverse: ');
  int number = int.parse(stdin.readLineSync()!);
  int reversed = 0;
  int original = number;
  while (number > 0) {
    int digit = number % 10;
    reversed = reversed * 10 + digit;
    number = number ~/ 10;
  }
  print('Reverse of $original is: $reversed');

  // 5. Average of a list of numbers

  List<double> numbers = [10, 20, 30, 40, 50];
  double sumList = 0;
  for (double num in numbers) {
    sumList += num;
  }
  double average = sumList / numbers.length;
  print('List: $numbers');
  print('Average: $average');
}
