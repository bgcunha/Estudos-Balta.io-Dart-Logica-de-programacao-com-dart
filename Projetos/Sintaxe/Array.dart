import 'dart:io';

main(List<String> args) {
  bool condicao = true;
  var nome = [];
  while (condicao) {
    print("Digite o nome:");
    String texto = stdin.readLineSync().toString();

    if (texto.toLowerCase() != "sair") {
      nome.add(texto);
      print("Nome $texto adicionado na lista.");

      print(nome);
      print("");
    } else {
      condicao = false;
      print("PROGRAMA FINALIZADO! TEXTO DIGITADO FOI $texto");

      if (nome.contains("teste")) {
        nome.remove("teste");
      }

      if (nome.length > 0) {
        nome.removeAt(nome.length - 1);
      }
      print(nome);
    }
  }
}
