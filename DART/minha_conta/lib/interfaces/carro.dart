//uma interface é um contrato
//na interface os métodos não tem a implementação dos metodos.

abstract class Carro {
  //tornando os campos abstract resolve o problema no null safety
  abstract int portas;
  abstract int rodas;
  abstract String motor;

  int velocidadeMaxima();
}
