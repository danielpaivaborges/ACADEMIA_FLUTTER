void main(List<String> args) {
  final caixaBoneca = Caixa<Boneca>();
  caixaBoneca.adicionar(Boneca());
  Boneca? itemBoneca = caixaBoneca.getItems();
  print(itemBoneca!.altura());
}

class Caixa<I extends Item> {
  I? _item;

  void adicionar(I item) {
    _item = item;
  }

  I? getItems() {
    return _item;
  }

  double alturaItem() {
    return _item?.altura() ?? 0;
  }
}

class Bola extends Item {
  @override
  double altura() {
    return 20;
  }

  @override
  String toString() {
    return "eu sou uma bola com $altura() cm  de altura";
  }
}

class Boneca extends Item {
  @override
  double altura() {
    return 30;
  }
}

class Carrinho extends Item {
  @override
  double altura() {
    return 10;
  }
}

abstract class Item {
  double altura();
}
