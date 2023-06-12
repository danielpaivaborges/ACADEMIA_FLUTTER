import 'dart:async';

void main(List<String> args) {
  print('inicio do main');
  Timer.run(() {
    print('entrando no primeiro evento');
    scheduleMicrotask(() {
      print('executando a terceira microtask');
    });
  });
  scheduleMicrotask(() {
    print('executando a primeira microtask');
  });
  Timer.run(() {
    print('entrando no segundo evento');
  });
  scheduleMicrotask(() {
    print('executando a segunda microtask');
  });
  print('fim do main');
}
