void main() {
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
  print('*****removendo duplicados*****');
  var lista = pessoas.toSet().map((e) => e.split("|")).toList();
  for (var pessoa in lista) {
    print(pessoa[0]);
  }

  //! 2 - Me mostre a quantidade de pessoas por sexo (Masculino e Feminino) e depois me apresente o nome delas

  print(
      'Me mostre a quantidade de pessoas por sexo (Masculino e Feminino) e depois me apresente o nome delas');
  var mapaSexo = <String, List<String>>{};

  for (var pessoa in lista) {
    final masculinos = mapaSexo["M"] ?? <String>[];
    final femininos = mapaSexo["F"] ?? <String>[];
    var sexo = pessoa[2].toLowerCase();

    if (sexo == "masculino") {
      masculinos.add(pessoa[0]);
    } else {
      femininos.add(pessoa[0]);
    }

    mapaSexo["M"] = masculinos;
    mapaSexo["F"] = femininos;
  }

  var masculino = mapaSexo["M"] ?? <String>[];
  var feminino = mapaSexo["F"] ?? <String>[];

  print("o numero de indivíduos do sexo masculino é ${masculino.length}");
  for (var nome in masculino) {
    print(nome);
  }
  print("o numero de individuos do sexo feminino é ${feminino.length}");
  for (var nome in feminino) {
    print(nome);
  }

  //! 3 - Filtrar e deixar a lista somente com pessoas maiores de 18 anos e apresente essas pessoas pelo nome
  var maiores = lista.where((element) {
    return (int.tryParse(element[1]) ?? 0) > 18;
  });
  print(
      '3 - Filtrar e deixar a lista somente com pessoas maiores de 18 anos e apresente essas pessoas pelo nome');
  for (var pessoa in maiores) {
    print(pessoa[0]);
  }

  //! 4 - Encontre a pessoa mais velha e apresente o nome dela.
  print('4 - Encontre a pessoa mais velha e apresente o nome dela.');
  var listaNova = [...lista];

  listaNova.sort((p1, p2) {
    var idade1 = (int.tryParse(p1[1])) ?? 0;
    var idade2 = (int.tryParse(p2[1])) ?? 0;
    return idade1.compareTo(idade2);
  });
  print(
      'A pessoa mais velha da lista é ${listaNova.last[0]} e tem a idade de ${listaNova.last[1]} anos');
}
