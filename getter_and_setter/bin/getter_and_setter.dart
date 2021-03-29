class User {
  double _height;
  double _weight;
  double _total;

  double get height => _height;
  double get weight => _weight;

  set height(double height) {
    if (height > 1.30 && height < 3.0) {
      _height = height;
    } else {
      _height = 1.91;
    }
  }

  set weight(double weight) {
    if (weight > 10.0 && weight < 300.0) {
      _weight = weight;
    } else {
      _weight = 70;
    }
  }

  String showResult() {
    _total = _weight / (_height * _height);
    return 'Your IMC: ${_total.toStringAsPrecision(4)}';
  }
}

void main() {
  final user = User();

  user.height = 2.94;
  user.weight = 70.1;

  print(user.showResult());
}
