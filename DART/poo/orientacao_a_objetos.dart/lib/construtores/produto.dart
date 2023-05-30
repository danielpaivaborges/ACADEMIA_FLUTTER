// ignore_for_file: unused_field

class Produto {
  final int? _id;
  String? nome;
  final double? _preco;

//como inicializar corretamente atributos privados FINAL, se tentar iniciar dentro do corpo dará erro
  Produto({required this.nome, required int id, required double preco})
      : _id = id,
        _preco = preco {
    print(_id);
    print(_preco);
  }

  //utilizando factory tudo muda
  factory Produto.fabrica(String nome, int id, double preco) {
    return Produto(id: id, nome: nome, preco: preco);
  }
}
