String? nome = "Daniel Paiva Borges";
String? profissao;

void main() {
  print(nome?.toUpperCase() ?? "nome não informado".toUpperCase());
  print(profissao?.toUpperCase() ?? 'profissão não informada'.toUpperCase());
}
