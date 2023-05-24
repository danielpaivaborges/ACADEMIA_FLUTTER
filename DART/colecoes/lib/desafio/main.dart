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
  print(pessoas.length);

  //! Baseado na lista acima.
  //! 1 - Remova os pacientes duplicados e apresente a nova lista
  final listaFiltrada = pessoas.toSet().map((e) => e.split('|')).toList();
  print(listaFiltrada);

  //! 2 - Me mostre a quantidade de pessoas por sexo (Masculino e Feminino) e depois me apresente o nome delas
  print('listas divididas por sexo');

  final mapSexo = <String, List<String>>{};
  for (var pessoa in listaFiltrada) {
    final sexo = pessoa[2].toLowerCase();
    final listaMasculino = mapSexo["M"] ?? <String>[];
    final listaFeminino = mapSexo["F"] ?? <String>[];

    if (sexo == 'masculino') {
      listaMasculino.add(pessoa[0]);
    } else {
      listaFeminino.add(pessoa[0]);
    }

    mapSexo['M'] = listaMasculino;
    mapSexo["F"] = listaFeminino;
  }

  final masculinos = mapSexo['M'] ?? <String>[];
  final femininos = mapSexo['F'] ?? <String>[];
  masculinos.sort();
  femininos.sort();

  print("Masculinos = ${masculinos.length}");
  masculinos.forEach(print);

  print("Femininos = ${femininos.length}");
  femininos.forEach(print);

  //! 3 - Filtrar e deixar a lista somente com pessoas maiores de 18 anos e apresente essas pessoas pelo nome
  //! 4 - Encontre a pessoa mais velha e apresente o nome dela.
}
