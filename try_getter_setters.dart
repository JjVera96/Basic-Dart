import 'dart:math' as math;

class Square {
  double side;

  Square(this.side);

  double get area {
    return this.side * this.side;
  }

  set area(double value) {
    this.side = math.sqrt(value);
  }

}

void main() {
  final square = Square(5);
  print('side = ${square.side}');
  print('area = ${square.area}');
  
  square.area = 36;
  print('side = ${square.side}');
  print('area = ${square.area}');

}