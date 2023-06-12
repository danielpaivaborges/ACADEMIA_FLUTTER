void main(List<String> args) {
  //o wait permite obter informações de diversas fontes diferentes, teoricamente em paralelo
  print('iniciando o Main');
  var f1 = Future.delayed(Duration(seconds: 1), () {
    return 'f1';
  });
  var f2 = Future.delayed(Duration(seconds: 1), () {
    return 'f2';
  });
  var f3 = Future.delayed(Duration(seconds: 3), () {
    return 'f3';
  });
  var f4 = Future.delayed(Duration(seconds: 1), () {
    return 'f4';
  });

  //utilizando o recurso
  print(DateTime.now().toIso8601String());
  //aguardando todas as funções executarem
  Future.wait([f1, f2, f3, f4]).then((arrayValues) {
    print(arrayValues);
    print(DateTime.now().toIso8601String());
  });
  print('terminando o main');
}
