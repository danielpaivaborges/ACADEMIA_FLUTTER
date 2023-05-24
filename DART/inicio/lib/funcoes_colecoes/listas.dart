void main(List<String> args) {
  //LISTAS E NULL SAFETY

  //ESTA LISTA ACEITA QUALQUER TIPO DE STRING MAS NÃO ACEITA NULL DENTRO DA LISTA E NÃO ACEITA LISTA NULA
  List<String> lista = [];
  //ESTA LISTA ACEITA QUALQUER TIPO DE STRING E O VALOR NULL DENTRO DA LISTA MAS NÃO ACEITA QUE A LISTA SEJA NULA
  List<String?> lista2 = [];
  //ESTA LISTA ACEITA TANTO VALORES NULOS DENTRO DA LISTA COMO UMA LISTA NULA
  List<String?>? lista3 = [];
  var listao = [...lista, ...lista2, ...lista3];
  print(listao);

  var numeros = List.generate(10, (index) => index);
  numeros.forEach(print);

  //criando uma lista bidimensional
  var numerosBidimensional = [
    [0, 1],
    [2, 3]
  ];
  //usando o metodo expand para unir os valores
  var numerosUnidos = (numerosBidimensional.expand((element) => element));
  print(numerosUnidos);

  //usando any
  var resposta = numerosUnidos.any((element) => element == 2);
  print(resposta);

  //modificando um sort
  var pacientes = ['DANIEL|50', 'ARTHUR|18', 'CAROL|23'];
  pacientes.sort((paciente1, paciente2) {
    final pacienteSeparado1 = paciente1.split("|");
    final pacienteSeparado2 = paciente2.split("|");

    final idade1 = int.parse(pacienteSeparado1[1]);
    final idade2 = int.parse(pacienteSeparado2[1]);

    //forma mais extensa
    // if (idade1 > idade2) {
    //   return 1;
    // } else if (idade1 == idade2) {
    //   return 0;
    // } else {
    //   return -1;
    // }

    //outra forma, mais eficiente e menor
    return idade1.compareTo(idade2);
  });
  print(pacientes); //[ARTHUR|18, CAROL|23, DANIEL|50]
}
