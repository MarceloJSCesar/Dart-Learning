class Animal {
  int age;
  String name;

  Animal(this.age, this.name);

  void jock() {
    print('$name jocking ...');
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

  void showData() {
    print('Dog\'s name: $name, age: $age, cuteness: $cuteness%');
  }
}

class Cat extends Animal {
  Cat(age, name) : super(age, name);

  bool wantToJock() {
    return age <= 7;
  }

  void showData() {
    print('Cat\'s name: $name, age: $age');
  }
}

void main() {
  print('=== === === ===');
  final dog = Dog(2, 'Fifi', 50);
  dog.takeShower();
  dog.eat();
  dog.jock();
  dog.sleep();
  dog.showData();

  print('=== === === ===');

  final cat = Cat(8, 'Xuxu');
  cat.eat();
  cat.wantToJock() ? cat.jock() : cat.sleep();
  cat.wantToJock() ? cat.sleep() : cat.showData();
  cat.wantToJock() ? cat.showData() : null;

  print('=== === === ===');
}
