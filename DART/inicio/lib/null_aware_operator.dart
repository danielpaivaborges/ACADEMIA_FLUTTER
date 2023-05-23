String? nome; //variavel de nivel superior

void main(List<String> args) {
  //nome = "Daniel";
  String nomeCompleto = "${nome ?? '...'} Paiva Borges";
  print(nomeCompleto);
}
