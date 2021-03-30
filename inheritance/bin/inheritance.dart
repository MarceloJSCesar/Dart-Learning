class Animal {
  int age;
  String name;

  Animal(this.age, this.name);

  void jock() {
    print('$name jocking ...');
  }

  void shout() {
    print('shouting ...');
  }

  void sleep() {
    print('$name sleeping ...');
  }

  void eat() {
    print('$name eating ...');
  }
}

class Dog extends Animal {
  int cuteness;

  Dog(age, name, this.cuteness) : super(age, name);

  void takeShower() {
    cuteness += 10;
    print('$name taking a shower, cuteness level increased ${cuteness - 50}%');
  }

  @override
  void shout() => print('auuouuu aouuouu ...');

  @override
  String toString() => 'Dog | name: $name, age: $age, cuteness: $cuteness%';
}

class Cat extends Animal {
  Cat(age, name) : super(age, name);

  bool wantToJock() {
    return age <= 7;
  }

  @override
  void shout() => print('miauuuu miauuu ...');

  @override
  String toString() => 'Cat | name: $name, age: $age';
}

void main() {
  print('=== === === ===');
  final dog = Dog(2, 'Fifi', 50);
  dog.takeShower();
  dog.eat();
  dog.jock();
  dog.shout();
  dog.sleep();
  print(dog);

  print('=== === === ===');

  final cat = Cat(8, 'Xuxu');
  cat.eat();
  cat.wantToJock() ? cat.jock() : cat.shout();
  cat.wantToJock() ? cat.shout() : cat.sleep();
  cat.wantToJock() ? cat.sleep() : print(cat);
  cat.wantToJock() ? print(cat) : null;

  print('=== === === ===');
}
