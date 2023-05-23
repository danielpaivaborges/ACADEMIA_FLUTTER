void main(List<String> args) {
  var idade = "50 anos";
  String? nome;

  try {
    var convertido = int.parse(idade);
  } on FormatException catch (s) {
    print("ocorreu um erro de formatação $s");
  } catch (e, s) {
    print("ocorreu outro erro $s");
  } finally {
    print("executou");
  }
}
