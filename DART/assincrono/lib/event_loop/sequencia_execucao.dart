import 'dart:async';

void main(List<String> args) {
  //NÃO IMPORTA A SEQUENCIA SEMPRE VAI HAVER A EXECUÇAO NA SEGUINTE ORDEM=> MAIN -> MICROTASK -> EVENTOS TIMER
  print("iniciando o main");
  Timer.run(() => print('execução do timer'));
  scheduleMicrotask(() {
    print("executando o microtask");
  });
  print("terminando o main");
}
