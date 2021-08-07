import 'package:dart_if_else/dart_if_else.dart' as dart_if_else;
import 'dart:io';

//solicitar nota e se for maior imprime aprovado, senão reprovado e o que falta

// experimentando operadores relacionais // > < > =
void main(List<String> arguments) {
  print('Digite Sua Nota: ');
  var entradaNota = stdin.readLineSync();
  var nota = double.parse(entradaNota!);

  print('informe a nota da recuperação: ');
  var entradaRecuperacao = stdin.readLineSync();
  var recuperacao = double.parse(entradaRecuperacao!);

//  utilizando operador lógico para validar resultado

  print('Informe o percentual de sua presença: ');
  var entradaPresenca = stdin.readLineSync();
  var presenca = int.parse(entradaPresenca!);

  var notaQueFalta = 6 - nota; // variavel que calcula a nota que falta
  var notaQueFaltaRecup =
      6 - recuperacao; // variável que calcula a nota falta na recuperação

  if ((presenca >= 75) && (nota >= 5.99 || recuperacao >= 5.99)) {
    //experimentando operadores relacionais <, >, = adicionando agora operadores lógicos no if

    print('PARABÉNS foi aprovado!');
  } else {
    print(
        'VOCÊ REPROVOU, ESTUDE MAIS!!'); // tudo ok com o codigo teste de alteração
    if (nota < 5.99) print('a nota que faltou na prova foi ${notaQueFalta}');
    if (recuperacao < 6)
      print('A nota que faltou na recuperacao foi ${notaQueFaltaRecup}');
  }
}
