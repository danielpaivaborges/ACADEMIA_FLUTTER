class Camiseta {
  String tamanho = "G";
  String cor = 'preta';
  String? marca;

  static int contador = 0;
  //crie com const para não poder ser alterado
  static const nomeIndustrial = "Camiseta indstrial";

  Camiseta({required this.cor, required this.marca, required this.tamanho}) {
    contador++;
    print(
        "uma instancia de camiseta acaba de ser criada...Agora temos $contador camiseta(s) criada(s)");
  }

  @override
  String toString() {
    super.toString();
    return "A camiseta da marca $marca,  de tamanho $tamanho e de cor $cor acaba de ser criada.";
  }
}
