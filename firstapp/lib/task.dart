class Task {
//atributos:

  late String nome;
  late DateTime data;
  late bool concluida;

//construtor:

  Task(String nome) {
    this.nome = nome;
    data = DateTime.now();
    concluida = false;
  }
}
