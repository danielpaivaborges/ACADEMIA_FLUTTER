// ignore_for_file: public_member_api_docs, sort_constructors_first
void main(List<String> args) {
  var frutas = [
    Fruta(nome: "abacate"),
    Fruta(nome: "banana"),
    Fruta(nome: 'maçã')
  ];

//METODO MAIS COMPLICADO
  List<Suco> sucoPronto = [];
  for (var fruta in frutas) {
    final sabor = Suco(sabor: fruta.nome);
    sucoPronto.add(sabor);
  }
  print(sucoPronto.toString());

  //METODO MAIS SIMPLES
  var suco2 = frutas.map((fruta) => Suco(sabor: fruta.nome)).toList();
  print(suco2);

  //UTILIZANDO UMA LISTA DO TIPO MAPA
  var frutaMapa = [
    {'nome': 'uva'},
    {'nome': 'cereja'},
    {'nome': 'jaboticava'}
  ];
  var suco3 = frutaMapa
      .map((frutaMapeada) => Suco(sabor: frutaMapeada['nome'] ?? "sem sabor"))
      .toList();
  print(suco3);
}

class Fruta {
  String nome;
  Fruta({
    required this.nome,
  });

  @override
  String toString() {
    return nome.toUpperCase();
  }
}

class Suco {
  String sabor;

  Suco({
    required this.sabor,
  });

  @override
  String toString() {
    return 'Suco sabor $sabor';
  }
}
