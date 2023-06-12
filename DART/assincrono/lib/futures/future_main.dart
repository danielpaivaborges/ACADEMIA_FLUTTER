void main(List<String> args) {
  //ANATOMIA DE UMA FUTURE
  //UMA FUTURE PODE SER INCOMPLETA, COMPLETA COM SUCESSO OU COMPLETA COM ERRO

  Future.delayed(
          Duration(seconds: 2),
          //função assincrona
          () {}) //se deu certo retorna o then
      .then((_) => print('executado com sucesso'))
      //se não deu certo retorna o catch error
      .catchError((error) => print(error.toString()))
      //esta parte sempre executa independentemente do resultado do processamento
      .whenComplete(() => print('operação completada'));
}
