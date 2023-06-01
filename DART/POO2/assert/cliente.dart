// ignore_for_file: public_member_api_docs, sort_constructors_first
class Cliente {
  String? nome;
  String? cpf;
  String? razaoSocial;
  String? cnpj;

  Cliente({
    this.nome,
    this.cpf,
    this.razaoSocial,
    this.cnpj,
  }) : assert(nome != null, "nome não pode ser nulo");
}
