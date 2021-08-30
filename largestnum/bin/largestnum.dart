import 'dart:math';

void main() {
  List<int> largestnum = [];
  List<int> numbers = [
    Random().nextInt(100),
    Random().nextInt(100),
    Random().nextInt(100),
    Random().nextInt(100),
    Random().nextInt(100),
    Random().nextInt(100),
    Random().nextInt(100),
    Random().nextInt(100),
    Random().nextInt(100),
    Random().nextInt(100),
    Random().nextInt(100),
  ];
  print(
      'list: ${numbers.cast()}, and print lastnumber: ${numbers[numbers.length - 1]}');
  for (int i = 0; i < numbers.length; i++) {
    print('starting ...');
    if (i + 1 < numbers.length) {
      if (numbers[i] > numbers[i + 1]) {
        print('${numbers[i]} is greater than ${numbers[i + 1]}');
        largestnum.add(numbers[i]);
        if (largestnum.length > 1) {
          for (int n = 0; n < largestnum.length; n++) {
            if (n + 1 < largestnum.length) {
              if (largestnum[n] > largestnum[n + 1]) {
                print('largestnum length: ${largestnum.length}');
                print('before removing minot number: ${largestnum.cast()}');
                largestnum.remove(largestnum[n + 1]);
                print('After removing minor number: ${largestnum.cast()}');
                if (largestnum[0] > numbers[numbers.length - 1]) {
                  print('it is okay');
                } else {
                  largestnum.remove(largestnum[0]);
                  largestnum.add(numbers[numbers.length - 1]);
                }
              } else {
                largestnum.remove(largestnum[n]);
                print('largestnum minor');
              }
            } else {
              print('n+1 is greater');
            }
          }
        } else {
          print('only 1 number yet');
        }
      } else {
        print('minor');
      }
      print('largestnum: ${largestnum.cast()}');
    } else {
      print(i + 1 > numbers.length);
    }
  }
}
