import 'dart:io';

void main() {
  bool end = false;
  Calc calc = Calc();
  while (!end) {
    calc.getInputs();
    calc.doCalculation();
    calc.printResult();
    print(
        "if you want to do another calculation press y if you want to end the program press any button");
    if (stdin.readLineSync().toString() != 'y') 
      end = true;
    
  }
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
    getFirstNumber();
    getOperation();
    getSecondNumber();
  }

  void getFirstNumber() {
    try {
      print("enter the first number : ");
      n1 = double.parse(stdin.readLineSync().toString());
    } catch (e) {
      print("you have entered illegal input ");
      getFirstNumber();
    }
  }

  void getOperation() {
    print("enter the operation [+,-,x,/]  : ");
    operation = stdin.readLineSync().toString();
    if (operation == "+" ||
        operation == "-" ||
        operation == "x" ||
        operation == "/")
      return;
    else {
      print("you can enter only one of the following operations [+,-,x,/]");
      getOperation();
    }
  }

  void getSecondNumber() {
    try {
      print("enter the second number : ");
      n2 = double.parse(stdin.readLineSync().toString());
    } catch (e) {
      print("you have entered illegal input ");
      getSecondNumber();
    }
    if (operation == "/" && n2 == 0) {
      print("you cannot devide by Zero , try again ");
      getInputs();
    }
  }

  void printResult() {
    print("$n1 $operation $n2 = $result");
  }
}
