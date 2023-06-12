import 'dart:async';

void main(List<String> args) {
  print('iniciando o main');
  funcao1();
  funcao2();
  print('finalizando o main');
}

void funcao1() {
  print('iniciando a funcao 1');
  Timer.run(() {
    print('calculando algo complexo na função 1');
  });
  print('terminando a função 1');
}

void funcao2() {
  print('iniciando a funcao 2');
  Timer.run(() {
    print('calculando algo complexo na função 2');
  });
  print('terminando a função 2');
}
