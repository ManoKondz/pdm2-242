class Aluno {
  int id;
  String nome;
  String dataNascimento;

  // Use 'required' para tornar os parâmetros obrigatórios
  Aluno({required this.id, required this.nome, required this.dataNascimento});

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'nome': nome,
      'data_nascimento': dataNascimento,
    };
  }
}

void main() {
  final aluno = Aluno(id: 1, nome: 'João', dataNascimento: '2000-01-01');
  final aluno2 = Aluno(id: 2, nome: 'Lulu', dataNascimento: '2007-06-03');
  print('Aluno: ${aluno.nome}, Nascimento: ${aluno.dataNascimento}');
  print('Aluno: ${aluno2.nome}, Nascimento: ${aluno2.dataNascimento}');
}
