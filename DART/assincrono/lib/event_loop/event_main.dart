import 'dart:async';

void main(List<String> args) {
  Timer.run(() {
    print("primeiro timer");
  });

  Timer.run(() {
    print('segundo timer');
  });

  scheduleMicrotask(() {
    print('primeira microtask');
  });
}
