void main(List<String> args) {
  var numerosLista = [];
  numerosLista.addAll([1, 2, 3, 4, 5, 6, 6, 7]);
  print(numerosLista);
  var setCriado = numerosLista.toSet();
  print(setCriado);

//comparando sets
  print("*****comparando sets*****");
  var set1 = {1, 2, 3, 4, 5, 6, 9};
  var set2 = {2, 4, 6, 7, 8, 10};
  var diferentes = set1.difference(set2);
  var diferentes2 = set2.difference(set1);
  print(diferentes);
  print(diferentes2);

  //unindo sets
  print('****juntando sets *****');
  var tudojunto = set1.union(set2);
  print(tudojunto);

  //descobrindo interseção
  print('***** interseção *****');
  var intercessao = set1.intersection(set2);
  print(intercessao);

  //fazendo uma busca
  print('**** fazendo busca ****');
  int? busca = set1.lookup(15);
  print(busca);
}
