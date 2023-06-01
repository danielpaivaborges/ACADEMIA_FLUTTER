import 'cliente.dart';

void main(List<String> args) {
  var c1 = Cliente(nome: 'daniel', Telefone: '355554454');
  var c2 = Cliente(nome: "carol", Telefone: "444444444");
  var c3 = Cliente(nome: "arthur", Telefone: "165464665");

  var lista = [c1, c2, c3]
    ..sort()
    ..forEach(
      (element) => print(
        element.nome.toUpperCase(),
      ),
    );

// para a lista ser impressa da forma correta é necessário sobreescrever o metodo toString dentro da classe criada
  print(lista);
}
