import 'package:projetoestudo/src/calculo_idade.dart';
import 'package:projetoestudo/src/carrinho_compra.dart';
import 'package:projetoestudo/src/imc.dart';
import 'package:projetoestudo/src/maps_cadastro.dart';

void main(List<String> arguments) {
  //print(object)

  if (arguments[0].toString() == 'cadastro') {
    mapsCadastro();
  } else if (arguments[0].toString() == 'idade') {
    calculoidade();
  } else if (arguments[0].toString() == 'imc') {
    IMC();
  } else if (arguments[0].toString() == 'carrinho') {
    CarrinhoCompra()();
  } else {
    print('====Esse programa não existe====');
  }
}
