bool par(int x) => x % 2 == 0 ? true : false;
bool impar(int x) => x % 2 != 0 ? true : false;

void separar(Function funcao, int intervalo) {
  for (int i = 0; i < intervalo; i++) {
    if (funcao(i)) {
      print(i);
    }
  }
}

void main(List<String> args) {
  separar(impar, 1000);
}
