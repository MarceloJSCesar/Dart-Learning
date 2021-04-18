import 'dart:io';

/* 
Ask user if he/she wants to do realize some of these options :
  -> Save new 'username',
  -> Read all users saved,
  -> Edit an existing user,
  -> Delete an existing user,
  -> Leave (finish the program)
*/

void main() {
  final _users = <String>['Marcelo', 'Daniel', 'D Jordan'];
  var _isProgramRunning = true;
  while (_isProgramRunning) {
    print('=== Welcome === \n');
    print(
        'What do you want? \n  -> Save/create new username, -> Read all users saved, -> Edit an existing user, -> Delete an existing user, -> Leave (finish the program \n \n');
    // actually i could let users type number but i think like that is clearly
    final _textAction = stdin.readLineSync();
    if (_textAction == 'Save' ||
        _textAction == 'save' ||
        _textAction == 'Create' ||
        _textAction == 'create') {
      print('Type username that you want to save/create');
      final _username = stdin.readLineSync();
      _users.add(_username);
      print('=== $_username added');
    } else if (_textAction == 'Read' || _textAction == 'read') {
      print('Here\'s all the users saved/created');
      print(_users);
    } else if (_textAction == 'Edit' || _textAction == 'edit') {
      print('Who do you want to edit?');
      final oldname = stdin.readLineSync();
      _users.contains(oldname)
          ? print('Type the name you want to be updated')
          : print('error name');
      if (_users.contains(oldname)) {
        final updatename = stdin.readLineSync();
        final userPosition = _users.indexOf(oldname);
        if (userPosition == -1) {
          print('user doesn\'t exist');
        } else {
          _users[userPosition] = updatename;
        }
        // _users.removeAt(userPosition);
        // _users.insert(userPosition, updatename);
        print('=== Name updated ===');
      } else {
        print('username that you added doesn\'t exist');
      }
    } else if (_textAction == 'Delete' || _textAction == 'delete') {
      print('Type the name you want to delete');
      final _nameToRemove = stdin.readLineSync();
      if (_users.contains(_nameToRemove)) {
        _users.remove(_nameToRemove);
        print('=== Removed ===');
      } else {
        print('username doesn\'t exist');
      }
    } else if (_textAction == 'Leave' || _textAction == 'leave') {
      print('=== Program finished ===');
      _isProgramRunning = false;
    }
  }
}
