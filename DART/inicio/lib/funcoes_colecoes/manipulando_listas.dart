void main(List<String> args) {
  final numeros = [1, 2, 3, 4, 5, 6];
  //adicionando ao final da lista (FIFO)
  numeros.add(7);
  //adicionando valor em um indice específico
  numeros[0] = 0;
  print(numeros.contains(5));
  //inserindo em lugar especifico
  numeros.insert(numeros.length - 1, 99);
  print(numeros);

  //encontrando valores
  int primeiro = numeros.firstWhere((element) => element == 3);
  print(primeiro);

  //gerando lista
  var listaNumerada = List.generate(
      10, (index) => "O Número ${index + 1} foi gerado corretamente...");

  for (var numero in listaNumerada) {
    print(numero.toUpperCase());
  }

  //GERANDO LISTA DE VALORES E SOMANDO
  var valores = List.generate(100, (index) => index + 1)
      .reduce((value, element) => value + element);
  print(valores);

  //MESMA COISA PORÉM USANDO FOLD, COM UM VALOR INICIAL
  var valoresFold = List.generate(100, (index) => index + 1)
      .fold(1, (previousValue, element) => previousValue + element);
  print(valoresFold);

  //COLLECTION IF
  var apto = true;
  var numeros1 = [1, 2, 3, 4, if (apto) 5, 6, 7, 8, 9];
  print(numeros1);

  //COLLECTION FOR
  var numeros2 = [
    0,
    for (int x = 0; x < numeros1.length; x++) numeros1[x],
    10,
    11,
    12
  ];
  print(numeros2);

  //COLLECTION FOR 2
  var numeros3 = [0, for (int numero in numeros1) numero, 10, 11, 12];
  print(numeros3);

  //LAÇO FOR EM COLEÇÕES
  var nomes = ['daniel', 'arthur', 'carol', 'marilia', 'jose', 'tereza'];
  for (var x = 0; x < nomes.length; x++) {
    if (nomes[x] == 'marilia') continue;
    print(nomes[x].toUpperCase());
  }
  for (var x = 0; x < nomes.length; x++) {
    if (nomes[x] == 'marilia') break;
    print(nomes[x].toUpperCase());
  }

  //LAÇO FOR IN EM COLEÇÕES
  for (var nome in nomes) {
    if (nome == 'marilia') break;
    print(nome);
  }
}
