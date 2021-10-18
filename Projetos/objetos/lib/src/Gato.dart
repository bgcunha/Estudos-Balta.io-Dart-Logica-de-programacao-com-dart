import 'Animal.dart';

class Gato extends Animal {
  String Nome = '';

  Gato(nome, somEmitido) : super(somEmitido) {
    Nome = nome;
    SomEmitido = somEmitido;
  }

  String _NomePrivate = 'Esta variável é privada.';

  String NomePrivado() {
    return _NomePrivate;
  }
}
