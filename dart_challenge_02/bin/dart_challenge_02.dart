import 'dart:io';

/* 
  The Hospital's problems:
    When a pacient arrives at hospital, i want to register all his data mainly his degree of severity and that according to that degree of severity that i will call,
      and when that patient is called, automatically remove him/her from the patient lists,
        and leave when type leave; 
*/

class Patient {
  final int degreeOfSeverity;
  final String name;
  final int age;

  Patient(this.degreeOfSeverity, this.name, this.age);
}

void main() {
  final _patients = <Patient>[];
  var _isHospitalOpen = true;
  final _actionsHeader =
      ' ================ \n [0] -> Register Patient,\n [1] -> Call Pactient,\n [2] -> Close The Hospital \n ================';
  while (_isHospitalOpen) {
    print('=== Welcome To Hospital === \n');
    print('What do you want to do?');
    print(_actionsHeader);
    final _actionText = int.parse(stdin.readLineSync());
    if (_actionText == 0) {
      print('Type the patient\'s name?');
      final _patientName = stdin.readLineSync();
      print('Age:');
      final _patientAge = int.parse(stdin.readLineSync());
      var _patientDegreeOfSeverity = 0;
      if (_patientAge <= 5 || _patientAge >= 50) {
        _patientDegreeOfSeverity = 2;
      } else {
        _patientDegreeOfSeverity = 1;
      }
      if (_patientDegreeOfSeverity == 2) {
        if (_patients.first.degreeOfSeverity == 2) {
          print(_patients);
          _patients.insert(
              1, Patient(_patientDegreeOfSeverity, _patientName, _patientAge));
        } else {
          _patients.insert(
              0, Patient(_patientDegreeOfSeverity, _patientName, _patientAge));
        }
      } else {
        _patients
            .add(Patient(_patientDegreeOfSeverity, _patientName, _patientAge));
      }
      print('---> Patient Registered');
    } else if (_actionText == 1) {
      if (_patients.isEmpty) {
        print('No one is registered yet');
      } else {
        print('${_patients.first.name} !!!!');
      }
      for (var p in _patients) {
        print(p.name);
      }
      for (var i = 0; i < _patients.length; i++) {
        print('patient$i ${_patients[i].name}');
      }
    } else if (_actionText == 2) {
      print('=== Hospital is closed from now, come back tomorrow ===');
      _isHospitalOpen = false;
    }
  }
}
