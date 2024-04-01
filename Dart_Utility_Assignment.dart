//Create a function that takes two numbers as input and returns the sum of those numbers

int sum(int a, int b) {
  return a + b;
}

void summation() {
  print(sum(4, 3));
}

//Write a program that uses a for loop to print out the numbers from 1 to 10.
void Numbers() {
  for (int i = 1; i <= 10; i++) {
    print(i);
  }
}

//Create a program that uses a switch statement to check for different string values and output a response based on the value.
void Switching(String value) {
  switch (value) {
    case "onions":
      print("This is an onion");
      break;
    case "Skuma wiki":
      print("This is skuma wiki.");
      break;
    case "pine apple":
      print("This is a fruit");
      break;
    default:
      print("No idea what this is.");
  }
}

//Create a program that uses a while loop to print out the numbers from 20 to 10.
void LoopingNumbers() {
  int i = 20;
  while (i >= 10) {
    print(i);
    i--;
  }
}

//Create a program that uses an if-else statement to check if a number is even or odd and output the result.
void CheckOdd_Even(int x) {
  if (x % 2 == 0) {
    print("Number ${x} is even");
  } else
    print("Number ${x} is odd");
}

//Create a program that takes a list of numbers as input and outputs the largest number in the list.
List<int> numb = [5, 10, 15, 20, 25, 30];
int Largest_number(List<int> numb) {
  int Largest = numb[0];
  for (var i = 1; i < numb.length; i++) {
    if (numb[i] > Largest) {
      Largest = numb[i];
    }
  }
  return Largest;
}

//Write a program that uses a try-catch block to catch an exception and output an error message.
void handleException() {
  try {
    int result = 10 ~/ 0; // This will throw a division by zero error
    print("Result: $result");
  } catch (e) {
    print("An error occurred: $e");
  }
}

void main() {
  // tsk 1
  print("the sum is : ${sum(3, 4)}");
  //task 2
  print("Numbers from 1 to 10:");
  Numbers();
//task 3
  print("switching:");
  Switching("onions");
  Switching("Skuma wiki");
  Switching("pine apple");
  Switching("nyanya");

  //task 4
  print("numbers descending from 20 to 10 are:");
  LoopingNumbers();

  // task 5
  print("checking if numbers are odd or even.");
  CheckOdd_Even(7);
  CheckOdd_Even(16);

  // task 6

  print("The largest number in the list is${Largest_number(numb)}");

// task 7
  handleException();
}
