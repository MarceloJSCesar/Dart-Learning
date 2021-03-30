class Person {
  int id;
  String email;

  Person(this.id, this.email);

  @override
  String toString() => 'id: $id, name: $email';
}

void main() {
  final user = <int, String>{};
  print(user.isEmpty ? 'user map is empty' : user);

  user[017] = 'Marcelo';
  user[06] = 'Mauro';
  user[01] = 'Lucas';

  print(user);

  user.remove(017);
  print(user);

  print(user.keys);
  print(user.values);

  final person = <String, Person>{};
  print(person.isEmpty ? 'person map is empty' : person);

  person['Luana'] = Person(01001100, 'luana@example.com');
  person['Sofia'] = Person(01010011, 'sofia@exmaple.com');
  print(person);

  final points = <String, Object>{
    'Marcelo': {
      'monday': '2points',
      'tuesday': '6points',
    },
    'Mark Zuckerberg': {
      'monday': '12 points',
      'tuesday': '15 points',
    }
  };
  print(points);
  // you can access directly , like that
  print(points.values);

  // and we alson can conbine lists with map inside
  final users = <Map<String, Object>>[
    {
      'user': {'name': 'Marcelo', 'age': 17},
    },
    {
      'user': {'name': 'Daniel', 'age': 15},
    },
    {
      'user': {'name': 'Fabio', 'age': 28}
    },
    {
      'user': {'name': 'Lucas', 'age': 48}
    }
  ];
  print(users);
  // i learned that you can access like that also
  print(users[3]['user']);
  // or show all the data like that
  for (dynamic i = 0; i < users.length; i++) {
    print(users[i]['user']);
  }
}
