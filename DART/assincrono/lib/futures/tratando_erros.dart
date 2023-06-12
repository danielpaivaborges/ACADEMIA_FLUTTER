void main(List<String> args) {
  Future<int>(
    () {
      return 10 ~/ 2;
    },
  ).then((value) => print('o valor calculado é $value'),
      //é possível tratar o erro aqui dentro mesmo
      //se houver esse tratamento aqui a função não chegará no catchError, a não ser que também gere um erro
      onError: (error) {
    print('deu merda');
    throw Exception("fudeu");
  }).catchError((error) {
    print('deu muito erro');
  });
}
