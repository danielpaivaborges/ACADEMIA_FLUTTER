void main() {
  //! Detalhe sobre a String
  //! A String é composta por 3 campos (Nome|Idade|Sexo)
  final pessoas = [
    'Rodrigo Rahman|35|Masculino',
    'Jose|56|Masculino',
    'Joaquim|84|Masculino',
    'Rodrigo Rahman|35|Masculino',
    'Maria|88|Feminino',
    'Helena|24|Feminino',
    'Leonardo|5|Masculino',
    'Laura Maria|29|Feminino',
    'Joaquim|72|Masculino',
    'Helena|24|Feminino',
    'Guilherme|15|Masculino',
    'Manuela|85|Feminino',
    'Leonardo|5|Masculino',
    'Helena|24|Feminino',
    'Laura|29|Feminino',
  ];

  //! Baseado na lista acima.
  //! 1 - Remova os pacientes duplicados e apresente a nova lista

  var listaFiltrada = pessoas.toSet().map((e) => e.split("|")).toList();
  print("********Lista filtrada **************");
  for (var pessoa in listaFiltrada) {
    print(pessoa[0]);
  }

  //! 2 - Me mostre a quantidade de pessoas por sexo (Masculino e Feminino) e depois me apresente o nome delas
  print("********Lista por sexo **************");
  var mapaSexo = <String, List<String>>{};

  for (var pessoa in listaFiltrada) {
    final sexo = pessoa[2].toLowerCase();
    final masculino = mapaSexo["M"] ?? <String>[];
    final feminino = mapaSexo["F"] ?? <String>[];

    if (sexo == 'masculino') {
      masculino.add(pessoa[0]);
    } else {
      feminino.add(pessoa[0]);
    }
    mapaSexo["M"] = masculino;
    mapaSexo["F"] = feminino;
  }
  var listaMasculino = mapaSexo["M"] ?? <String>[];
  listaMasculino.sort();
  var listaFeminino = mapaSexo["F"] ?? <String>[];
  listaFeminino.sort();
  print("o numero de pessoas do sexo masculino é ${listaMasculino.length}");
  for (var pessoa in listaMasculino) {
    print(pessoa);
  }
  print("o numero de pessoas do sexo feminino é ${listaFeminino.length}");
  for (var pessoa in listaFeminino) {
    print(pessoa);
  }

  //! 3 - Filtrar e deixar a lista somente com pessoas maiores de 18 anos e apresente essas pessoas pelo nome

  print("***** lista com maiores de 18 anos *****");
  var listaMaiores = listaFiltrada.where((element) {
    return (int.tryParse(element[1]) ?? 0) > 18;
  });
  for (var pessoa in listaMaiores) {
    print(pessoa[0]);
  }

  //! 4 - Encontre a pessoa mais velha e apresente o nome dela.
  print("****** Encontrando a pessoa mais velha *****");
  var listaVelho = [...listaFiltrada];
  listaVelho.sort((p1, p2) {
    var p1Idade = int.tryParse(p1[1]) ?? 0;
    var p2Idade = int.tryParse(p2[1]) ?? 0;
    return p1Idade.compareTo(p2Idade);
  });
  print(
      "A pessoa mais velha da lista é ${listaVelho.last[0]} e a idade dela é ${listaVelho.last[1]} anos");
}
