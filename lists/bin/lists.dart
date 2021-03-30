/* if you're using abstract you are saying that your class cannot be instancied and you have to specify the data inside on it */
abstract class User {
  static int id;
  static String name;
}

class Person {
  String email;
  String password;

  Person(this.email, this.password);

  @override
  String toString() => 'email: $email, password: $password';
}

void main() {
  final id = User.id = 010001101;
  final name = User.name = 'Marcelo';
  print('id: $id, name: $name');

  final data = <String>['Marcelo', 'Daniel', 'Lucas'];
  print(data);

  final _newUser = 'Luana';
  data.add(_newUser);
  print(data);

  final correctData = data.contains(_newUser);
  print(correctData
      ? 'There\'s someone who his|her name is $_newUser'
      : 'There ins\'t no one who called $_newUser');

  data.removeAt(1);
  print(data);

  data.removeLast();
  print(data);

  data.insert(1, 'Mauro');
  print(data);

  final person = <Person>[];
  print(person.isNotEmpty ? person : 'List of type Person is empty');

  person.add(Person('jsdevmarcelo@gmail.com', '12348765'));
  person.add(Person('devmarcelocesar@gmail.com', '12345678'));
  print(person);

  for (final p in person) {
    print(p.email);
  }
}
