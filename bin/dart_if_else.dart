import 'package:dart_if_else/dart_if_else.dart' as dart_if_else;
import 'dart:io';

//solicitar nota e se for maior imprime aprovado, senão reprovado e o que falta

// experimentando operadores relacionais // > < > =
void main(List<String> arguments) {
  print('Digite Sua Nota: ');
  var entradaNota = stdin.readLineSync();
  var nota = double.parse(entradaNota!);
  if (nota <= 5.99) {
    //experimentando operadores relacionais <, >, =
    print('você reprovou!');
    var notaQueFaltou = 6 - nota;
    print('você reprovou! faltou ${notaQueFaltou}');
  } else {
    print('Você foi Aprovado, parabéns!!');
  }
}
