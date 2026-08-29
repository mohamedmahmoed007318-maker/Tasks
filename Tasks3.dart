import 'dart:io';

void main() {
  // 1. Day of the week (1-7)

  stdout.write('Enter a number (1-7): ');
  int? dayNum = int.tryParse(stdin.readLineSync() ?? '');
  List<String> days = [
    'Sunday', 'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday'
  ];
  if (dayNum != null && dayNum >= 1 && dayNum <= 7) {
    print('Result: ${days[dayNum - 1]}');
  } else {
    print('Invalid input. Please enter a number between 1 and 7.');
  }

  // 2. Month name (1-12)

  stdout.write('Enter a number (1-12): ');
  int? monthNum = int.tryParse(stdin.readLineSync() ?? '');
  List<String> months = [
    'January', 'February', 'March', 'April', 'May', 'June',
    'July', 'August', 'September', 'October', 'November', 'December'
  ];
  if (monthNum != null && monthNum >= 1 && monthNum <= 12) {
    print('Result: ${months[monthNum - 1]}');
  } else {
    print('Invalid input. Please enter a number between 1 and 12.');
  }

  // 3. Season mapper

  stdout.write('Enter month number (1-12) for season: ');
  int? m = int.tryParse(stdin.readLineSync() ?? '');
  if (m != null && m >= 1 && m <= 12) {
    if (m >= 3 && m <= 5) {
      print('Season: Spring');
    } else if (m >= 6 && m <= 8) {
      print('Season: Summer');
    } else if (m >= 9 && m <= 11) {
      print('Season: Autumn/Fall');
    } else {
      print('Season: Winter');
    }
  } else {
    print('Invalid month.');
  }

  // 4. Simple authentication system

  String correctEmail = 'mohamed@gmail.com';
  String correctPass = '12345';
  
  stdout.write('Enter email: ');
  String email = stdin.readLineSync() ?? '';
  stdout.write('Enter password: ');
  String password = stdin.readLineSync() ?? '';
  
  if (email == correctEmail && password == correctPass) {
    print('Authentication successful');
  } else {
    print('Authentication failed');
  }

  // 5. Result of the equation

  int x = 10;
  int y = 5;
  int z = 3;

  
  int sum = ++x - --y + --z - x-- + y++ - x + z++ + y - z;
  print('For x=10, y=5, z=3');
  print('The result of the equation is: $sum');
}
