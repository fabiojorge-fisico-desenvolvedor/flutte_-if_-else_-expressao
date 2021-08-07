import 'package:dart_if_else/dart_if_else.dart' as dart_if_else;
import 'dart:io';

//solicitar nota e se for maior imprime aprovado, senão reprovado e o que falta

// experimentando operadores relacionais // > < > =
void main(List<String> arguments) {
  print('Digite Sua Nota: ');
  var entradaNota = stdin.readLineSync();
  var nota = double.parse(entradaNota!);

  print('Informe o percentual de sua presença: ');
  var entradaPresenca = stdin.readLineSync();
  var presenca = int.parse(entradaPresenca!);

  var notaQueFalta = 6 - nota; // variavel que calcula a nota que falta

  if (presenca >= 75) {
    if (nota >= 6) {
      print('Aprovado, parabéns sua nota foi: $nota');
    } else {
      print('Informe a nota da Recuperação');
      var entradaRecuperacao =
          stdin.readLineSync(); // entrada de dados recuperação 
      var recuperacao = double.parse(entradaRecuperacao!);
      if (recuperacao >= 6) {
        print('Aprovado e sua nota de recuperação foi $recuperacao');
      } else {
        print('reprovado, sua nota de recuperacao foi $recuperacao ');
      }
    }
  } else {
    print('reprovado por falta');
  }
}
