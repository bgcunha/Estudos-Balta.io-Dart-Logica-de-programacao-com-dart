import 'src/Gato.dart';

void main(List<String> arguments) {
  Gato gato = Gato('Batoré', 'Miau');

  var nomePrivado = gato.NomePrivado();

  print(gato.Nome);
  print(gato.SomEmitido);

  print(nomePrivado);
}
