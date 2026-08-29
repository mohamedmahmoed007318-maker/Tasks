import 'dart:io';

void main() {
  // 1. Even or Odd

  stdout.write('Enter an integer: ');
  int? evenOddNum = int.tryParse(stdin.readLineSync() ?? '');
  if (evenOddNum != null) {
    if (evenOddNum % 2 == 0) {
      print('Result: Even');
    } else {
      print('Result: Odd');
    }
  } else {
    print('Invalid input.');
  }

  // 2. Letter Grade

  stdout.write('Enter numerical score (0-100): ');
  double? score = double.tryParse(stdin.readLineSync() ?? '');
  if (score != null && score >= 0 && score <= 100) {
    if (score >= 90) {
      print('Grade: A');
    } else if (score >= 80) {
      print('Grade: B');
    } else if (score >= 70) {
      print('Grade: C');
    } else if (score >= 60) {
      print('Grade: D');
    } else {
      print('Grade: F');
    }
  } else {
    print('Invalid score.');
  }

  // 3. Simple Calculator

  stdout.write('Enter first number: ');
  double? n1 = double.tryParse(stdin.readLineSync() ?? '');
  stdout.write('Enter an operator (+, -, *, /): ');
  String op = stdin.readLineSync() ?? '';
  stdout.write('Enter second number: ');
  double? n2 = double.tryParse(stdin.readLineSync() ?? '');

  if (n1 != null && n2 != null) {
    switch (op) {
      case '+':
        print('Result: ${n1 + n2}');
        break;
      case '-':
        print('Result: ${n1 - n2}');
        break;
      case '*':
        print('Result: ${n1 * n2}');
        break;
      case '/':
        if (n2 != 0) {
          print('Result: ${n1 / n2}');
        } else {
          print('Error: Division by zero.');
        }
        break;
      default:
        print('Invalid operator.');
    }
  } else {
    print('Invalid numbers.');
  }

  // 4. Age Groups

  stdout.write('Enter your age: ');
  int? age = int.tryParse(stdin.readLineSync() ?? '');
  if (age != null && age >= 0) {
    if (age <= 12) {
      print('Group: child (0-12)');
    } else if (age <= 19) {
      print('Group: teenager (13-19)');
    } else if (age <= 35) {
      print('Group: young adult (20-35)');
    } else if (age <= 60) {
      print('Group: adult (36-60)');
    } else {
      print('Group: senior (61 and above)');
    }
  } else {
    print('Invalid age.');
  }

  // 5. Positive, Negative, or Zero

  stdout.write('Enter an integer: ');
  int? signNum = int.tryParse(stdin.readLineSync() ?? '');
  if (signNum != null) {
    if (signNum > 0) {
      print('Result: Positive');
    } else if (signNum < 0) {
      print('Result: Negative');
    } else {
      print('Result: Zero');
    }
  } else {
    print('Invalid input.');
  }
}
