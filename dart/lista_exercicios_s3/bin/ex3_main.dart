import 'dart:io';

// The 'saldo' variable is accessible to other files that import this one.
double saldo = 1000.0;

/// This function contains the logic for exercise 3 and can be called from other files.
void runPixTransaction() {
  print('Boas-vindas ao seu banco digital!');
  print('Seu saldo atual é de: R\$${saldo.toStringAsFixed(2)}');

  print('Digite o valor do Pix que deseja realizar:');
  double valorPix = double.parse(stdin.readLineSync()!);

  // Update the saldo and then print the new value.

  if (saldo >= valorPix) {
  saldo = saldo - valorPix;
  } else {
    print('Saldo insuficiente.');

  }

  print('Seu saldo atual é: R\$${saldo.toStringAsFixed(2)}');

  stdout.writeln("Você deseja repetir a operação? (S/N)");
  String resposta = stdin.readLineSync()!;

  if (resposta.toLowerCase() == 's') {
    runPixTransaction();
  } else {
    stdout.write("Pressione qualquer tecla para sair. ");
    stdin.readLineSync();
  }

}