void main(List<String> args) {
  //so retorna o primeiro que executar, executa todos mas ignora os outros.
  var f1 = Future<String>.delayed(Duration(seconds: 2), () => 'f1');
  var f2 = Future<String>.delayed(Duration(seconds: 1), () => 'f2');
  var f3 = Future<String>.delayed(Duration(seconds: 1), () => 'f3');
  Future.any([f1, f2, f3]).then(print);
}
