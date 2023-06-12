void main(List<String> args) {
  Future(() {
    //função assíncrona que vai fazer um orçamento de manutenção
    return 10 ~/ 3;
  }).then((valorOrcamento) {
    print('o orçamento é de $valorOrcamento');
  });
  print('saindo da oficina');
}
