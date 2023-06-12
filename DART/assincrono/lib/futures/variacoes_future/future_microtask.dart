void main(List<String> args) {
  // future microtask agenda uma microtask
  print('iniciando main');
  Future<String>(() => 'Future normal').then(print);
  Future<String>.microtask(() => 'future microtask').then(print);
  print('encerrando o main');
}
