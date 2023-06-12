void main(List<String> args) {
  print('iniciou o processamento');
  //FORMA TRADICIONAL
  funcao1().then((value) {
    funcao2(value).then((value) => print(value));
  });

  //FORMA MAIS SIMPLES E RÁPIDA
  funcao1()
      .then((value) => funcao2(value))
      .then((value) => print('valor 2: $value'));
}

Future<String> funcao1() {
  return Future.delayed(Duration(seconds: 2), () => 'parâmetro 1');
}

Future<String> funcao2(String parametro) {
  return Future.value('parâmetro recebido e processado: $parametro');
}
