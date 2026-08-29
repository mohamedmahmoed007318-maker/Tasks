import 'dart:io';
import 'dart:math' as math;

void main() {
  // 1. Divide two numbers as input

  stdout.write('Enter first number: ');
  double num1 = double.parse(stdin.readLineSync()!);
  stdout.write('Enter second number: ');
  double num2 = double.parse(stdin.readLineSync()!);
  print('Result: ${num1 / num2}');

  // 2. Sum of two numbers as input

  stdout.write('Enter first number: ');
  double a = double.parse(stdin.readLineSync()!);
  stdout.write('Enter second number: ');
  double b = double.parse(stdin.readLineSync()!);
  print('Sum: ${a + b}');

  // 3. Area and mo7it (circumference) of a circle

  stdout.write('Enter radius: ');
  double radius = double.parse(stdin.readLineSync()!);
  double area = math.pi * radius * radius;
  double mo7it = 2 * math.pi * radius;
  print('Area: $area');
  print('mo7it: $mo7it');

  // 4. Swap two variables

  String firstName = "Mohamed";
  String lastName = "Mahmoed";
  print('Before swap: firstName = "$firstName", lastName = "$lastName"');
  
  // Swapping logic
  String temp = firstName;
  firstName = lastName;
  lastName = temp;
  
  print('After swap: firstName = "$firstName", lastName = "$lastName"');
}
