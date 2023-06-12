void main(List<String> args) {
  Future<String>(() {
    //throw Exception("O avião caiu");
    return 'tudo ok';
  }).then((value) => print('deu tudo certo, cheguei bem')).catchError((error) {
    print('Deu ruim, o avião caiu');
  }).whenComplete(() => print('a viagem foi completada'));
}
