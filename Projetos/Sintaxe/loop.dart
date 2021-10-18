import 'dart:io';

main(List<String> args) {
  bool condicao = true;

  while (condicao) {
    print("Digite uma palavra:");
    String texto = stdin.readLineSync().toString();

    if (texto.toLowerCase() != "sair") {
      print("Você digitou a palavra: $texto");
    } else {
      condicao = false;
      print("PROGRAMA FINALIZADO! TEXTO DIGITADO FOI $texto");
    }
  }
}
