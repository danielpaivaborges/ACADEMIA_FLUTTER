void main(List<String> args) {
  //usando o Future.value, ja cria o future com status completo
  Future.delayed(Duration(seconds: 2), () {
    return Future.value("valor retornado depois de dois segundos");
  }).then(print);

  // usando o Future.error, ja cria o future com status de erro
  Future.delayed(Duration(seconds: 3), () {
    return Future.error('deu merda');
  })
      .catchError((error) {
        return 'deu erro de novo: $error';
      })
      .then(print)
      .whenComplete(() => print('terminei o meu trabalho'));
}
