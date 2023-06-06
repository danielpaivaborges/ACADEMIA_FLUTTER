// ignore_for_file: public_member_api_docs, sort_constructors_first
abstract class Animal {
  String? tamanho;
  int idade;
  int? baseIdadeHumana;

  Animal({required this.idade});

  int recuperarIdade() {
    return idade;
  }

  int calcularIdadeHumana();
}
