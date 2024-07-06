import 'factorial.dart';

void main(){
  var factorial_number = Factorial();
  int incoming = factorial_number.calculate(5);
  print(incoming);
}