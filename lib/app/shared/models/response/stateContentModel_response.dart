class StateContentModelResponse {
  StateContentModelResponse({
    this.sigla,
    this.nome,
  });

  String sigla;
  String nome;

  factory StateContentModelResponse.fromJson(Map<String, dynamic> json) =>
      StateContentModelResponse(
        sigla: json["sigla"],
        nome: json["nome"],
      );

  Map<String, dynamic> toJson() => {
        "sigla": sigla,
        "nome": nome,
      };
}
