void main() {
  //criando uma lista de tamanho fixo
  var listaFixa = List.filled(10, 0);
  print(listaFixa);
  //utilizando setAll para incluir um iteravel
  listaFixa.setAll(5, [1, 2, 3]);
  print(listaFixa);
}
