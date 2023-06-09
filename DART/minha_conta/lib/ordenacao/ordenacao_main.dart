import 'package:minha_conta/ordenacao/cliente.dart';

void main(List<String> args) {
  var c1 = Cliente(nome: "daniel", telefone: "33355555");
  var c2 = Cliente(nome: "arthur", telefone: "54654654646");
  var c3 = Cliente(nome: "carol", telefone: "644646464");
  var c4 = Cliente(nome: "marilia", telefone: "11234457");

  var lista = [c1, c2, c3, c4];
  // ordenacao padrao
  // lista.sort((c1, c2) => c1.nome.compareTo(c2.nome));
  // print(lista);

//depois de implementar o metodo sort na classe
  lista.sort();
  print(lista);
}
