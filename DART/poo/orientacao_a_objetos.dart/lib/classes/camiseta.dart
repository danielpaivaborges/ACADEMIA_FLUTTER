class Camiseta {
  String tamanho = "G";
  String? _cor;
  String? marca;

  String? get cor => _cor;
  set corExterna(String? cor) {
    _cor = cor ?? "azul";
  }

  static int contador = 0;
  //crie com const para não poder ser alterado
  static const nomeIndustrial = "Camiseta indstrial";

  Camiseta({required this.marca, required this.tamanho}) {
    contador++;
    print(
        "uma instancia de camiseta acaba de ser criada...Agora temos $contador camiseta(s) criada(s)");
  }

  @override
  String toString() {
    super.toString();
    return "A camiseta da marca $marca,  de tamanho $tamanho e de cor ${cor ?? "azul"} acaba de ser criada.";
  }
}
