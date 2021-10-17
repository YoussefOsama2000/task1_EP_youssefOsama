import 'dart:io';

void main() {
  Calc calc = Calc();
  calc.getInputs();
  calc.doCalculation();
  calc.printResult();
}

class Calc {
  double n1 = 0, n2 = 0, result = 0;
  String operation = "";
  void doCalculation() {
    if (operation == "+")
      result = n1 + n2;
    else if (operation == "-")
      result = n1 - n2;
    else if (operation == "*" || operation == "-")
      result = n1 * n2;
    else if (operation == "/")
      result == n1 / n2;
    else
      error();
  }

  void error() {
    print("you have entered unsupported operation '$operation'");
    getInputs();
  }

  void getInputs() {
    print("enter the first number : ");
    n1 = double.parse(stdin.readLineSync().toString());
    print("enter the operation [+,-,x,/]  : ");
    operation = stdin.readLineSync().toString();
    print("enter the second number : ");
    n2 = double.parse(stdin.readLineSync().toString());
  }

  void printResult() {
    print("$n1 $operation $n2 = $result");
  }
}
