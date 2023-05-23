void main(List<String> args) {
  var numeros = List.generate(10, (index) => index);
  var lista1 = numeros.where((element) => element != 5);
  print(lista1.toList().reversed);
  numeros.takeWhile((value) => value < 6).forEach(print);

  //utilizando o skip com strings

  var nomes = [
    "daniel",
    "carol",
    "arthur",
    "marilia",
    "solange",
    "jose eustaquio"
  ];

  nomes
      .skipWhile(
        (nome) {
          if (nome != "arthur") {
            return true;
          } else {
            return false;
          }
        },
      )
      .toList()
      .forEach(print);

  print('******************');

  nomes
      .takeWhile(
        (nome) {
          if (nome != "arthur") {
            return true;
          } else {
            return false;
          }
        },
      )
      .toList()
      .forEach(print);
}
