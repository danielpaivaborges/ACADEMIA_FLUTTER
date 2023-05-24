void main(List<String> args) {
  final nome = 'Daniel Paiva Borges';

//USANDO SUBSTRING
  var subString = nome.substring(0, 10);
  print(subString);

  //USANDO SPLIT

  var nome2 = 'daniel | paiva | borges'.replaceAll(' ', '');
  var nome2Split = nome2.split("|");
  print(nome2Split);
}
