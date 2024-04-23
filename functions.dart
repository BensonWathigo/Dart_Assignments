import 'dart:io';

void main() {
  print("This is a calculator");
  print('Enter your first input');
  double num1 = double.parse(// Enter your first input
      stdin.readLineSync()!);

  print('Enter second number');
  double num2 = double.parse(stdin.readLineSync()!); // Enter second input

  print('select operation:');
  print('1. addition +');
  print('2subtraction');
  print('multiplication *');
  print('Division /');
  print('5. cosine');
  print('6.tagent');
  print('natural log ');

  int choice = int.parse(stdin.readLineSync()!);

  double result;

  switch (choice) {
    case 1:
      result = num1 + num2; // perform addition
      print('result: $result = $num1 + $num2'); //addition results
      break;
    case 2:
      result = num1 - num2; //subtraction
      print('results: $result = $num1 -$num2'); // subtraction
      break;
    case 3:
      if (num2 != 0) {
        result = num1 / num2; //Division
        print('Division results are:$num1/$num2 =$result');
      } else {
        print('Error. Denominator cannot be zero');
      }
      break; // Exit if else statemennt

    case 4:
      result = num1 * num2; // multiplication
      print('Multiplication results are: $num1 * $num2 = $result');

    default:
      print("Error message");
  }
}
// functions
