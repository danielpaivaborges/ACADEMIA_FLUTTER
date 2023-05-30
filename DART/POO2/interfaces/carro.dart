abstract class CarroAbstrato {
  void velocidade() {}
}

//a interface nao tem metodo implementado
//usar abstract dentro da classe para contornar o null safety
abstract class Carro {
  abstract int portas;
  abstract int rodas;
  abstract String motor;
  int velocidade();
}
