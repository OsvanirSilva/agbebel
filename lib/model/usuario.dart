class Usuario {
  final String uid;
  final String cpf;
  final String nome_completo;
  final String telefone;
  final String cnpj;

  Usuario(this.uid, this.cpf, this.nome_completo, this.telefone, this.cnpj);

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'uid': uid,
      'cpf': cpf,
      'nome': nome_completo,
      'telefone': telefone,
      'cnpj': cnpj,
    };
  }

  factory Usuario.fromJson(Map<String, dynamic> dados) {
    return Usuario(
      dados['uid'],
      dados['cpf'],
      dados['nome_competo'],
      dados['telefone'],
      dados['cnpj'],
    );
  }
}
