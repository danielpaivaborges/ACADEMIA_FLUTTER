void main(List<String> args) {
  final totalAlunos = buscarAlunos();
  totalAlunos
      .then((value) => print('o total de alunos atualmente é de $value'));
  print('resposta final: $totalAlunos');
}

Future<int> buscarAlunos() async {
  print('esse ponto do metodo é sincrono');
  final buscandoTotalAlunos =
      await Future.delayed(Duration(seconds: 2), () => 880);
  print("este ponto do metodo é depois do await");
  return buscandoTotalAlunos;
}
