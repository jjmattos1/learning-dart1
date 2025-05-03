import 'dart:io';

void main() {
  print("Hello World!\n");
  //var entrada = stdin.readLineSync();e
  //print("Olá, qual o seu nome? ${(entrada1 = stdin.readLineSync())}");
  stdout.write("Olá, qual o seu nome? ");
  String? nome = stdin.readLineSync();
  //String? nome = entrada1;
  stdout.write("\nE quantos anos você tem? ");
  String? idadeText = stdin.readLineSync();
  int? idade = int.tryParse(idadeText ?? '');
  print('\n\nOla $nome, voce tem $idade anos!\n');
}