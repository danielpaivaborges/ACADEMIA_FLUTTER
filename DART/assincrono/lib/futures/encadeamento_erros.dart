void main(List<String> args) {
  funcao1().then((value) => funcao2()
      .catchError((error) {
        print('tratando o erro da função 2');
        return 'agora deu certo';
      })
      .then((value) => funcao3())
      .then(print)
      .catchError((error) {
        print('houve erro em uma das chamadas');
      }));

  //outra forma de tratamento
  funcao1().then((value) => funcao2()
      .then((value) => funcao3())
      .catchError((error) {
        print('tratando o erro da função 2 novamente');
        return 'agora deu certo';
      })
      .then(print)
      .catchError((error) {
        print('houve erro em uma das chamadas');
      }));

  //mais uma forma de tratamento
  funcao1()
      .then((value) => funcao2())
      .then((value) => funcao3(), onError: (erro) {
        print("tratando o erro da função 2");
        return "agora ta liberada a funcao2";
      })
      .then(print)
      .catchError((error) => print("deu erro finalmente"));
}

Future<String> funcao1() {
  print('função 1 executando...');
  return Future.value('Fazendo algo na função 1');
}

Future<String> funcao2() {
  print('função 2 executando...');
  //return Future.value('Fazendo algo na função 2');
  //throw Exception("erro");
  return Future.error("não concluindo a função 2");
}

Future<String> funcao3() {
  print('função 3 executando...');
  return Future.value('Fazendo algo na função 3');
}
