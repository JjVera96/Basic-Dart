abstract class Animal {
 int? paws;

 Animal ();

 void makeSound();
}

class Dog implements Animal {
  int? paws = 4;

  void makeSound() => print('Gau gau');
}

class Cat implements Animal {
  int? paws = 4;

  void makeSound() => print('Miau');
}

abstract class Character {
  String name;
  String? power;

  Character(this.name);

  @override
  String toString() {
    return '$name - $power';
  }
}

class Hero extends Character {
  int courage = 100;

  Hero(String name): super(name);
}

class Villain extends Character {
  int evil = 100;

  Villain(String name): super(name);
}

void main() {
  final dog = Dog();
  dog.makeSound();

  final cat = Cat();
  cat.makeSound();

  final superman = Hero('superman');
  print(superman);

  final joker = Villain('joker');
  print(joker);
}