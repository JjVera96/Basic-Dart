abstract class Animal {}

abstract class Mammal extends Animal {}

abstract class Fish extends Animal {}

abstract class Bird extends Animal {}

abstract class Flyer  {
  void fly() => print('Can fly');
}

abstract class Walker  {
  void walk() => print('Can walk');
}

abstract class Swimmer  {
  void swim() => print('Can swim');
}

class Dolphin extends Mammal with Swimmer {}
class Bat extends Mammal with Flyer, Walker {}
class Cat extends Mammal with Walker {}

class Dove extends Bird with Flyer, Walker {}
class Duck extends Bird with Flyer, Swimmer, Walker {}

class Shark extends Fish with Swimmer {}
class FlyingFish extends Fish with Swimmer, Flyer {}

void main() {
  final dolphin = Dolphin();
  print(dolphin);
  dolphin.swim();

  final bat = Bat();
  print(bat);
  bat.fly();
  bat.walk();
}