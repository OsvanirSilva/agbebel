class Agendar {
  //Especificação das "chaves" do documento
  final String uid;
  final String cod_funcionario;
  final String cod_servico;
  final String cod_cliente;
  final String data;
  final String hora;
  final String valor;

  //Construtor
  Agendar(this.uid, 
          this.cod_funcionario, 
          this.cod_servico, 
          this.cod_cliente, 
          this.data,
          this.hora, 
          this.valor);

  //
  // toJson = converte um OBJETO da linguagem DART
  //          em um JSON
  //
  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'uid': uid,
      'cod_funcionario': cod_funcionario,
      'cod_servico': cod_servico,
      'cod_cliente': cod_cliente,
      'data': data,
      'hora': hora,
      'valor': valor,
    };
  }

  //
  // fromJson = converter um JSON em um OBJETO
  //            da linguagem DART
  //
  factory Agendar.fromJson(Map<String, dynamic> dados) {
    return Agendar(
      dados['uid'],
      dados['cod_funcionario'],
      dados['cod_servico'],
      dados['cod_cliente'],
      dados['data'],
      dados['hora'],
      dados['valor'],
    );
  }
}
