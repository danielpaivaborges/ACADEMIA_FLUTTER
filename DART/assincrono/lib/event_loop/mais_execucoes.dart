import 'dart:async';

void main(List<String> args) {
  Timer.run(() {
    print('tarefa 1');
    scheduleMicrotask(() {
      print('micro tarefa interna');
    });
  });
  Timer.run(() {
    print("segunda tarefa");
  });
  scheduleMicrotask(() {
    print('micro tarefa 1');
  });
}
