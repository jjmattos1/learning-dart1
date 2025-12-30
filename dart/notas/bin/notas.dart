import 'dart:io';

void main() {

  String getComando() {

    List<String> comandos = <String>["1", "2", "3", "4", "5","6"];
    String? entrada;

    print('\nDigite um comando da listagem abaixo (um dos números):\n');
    stdout.write('1 - Inserir nota, 2 - Listar notas, 3 - Imprimir números (corrigir return), 4 - Mostrar nomes, 5 - Em busca da parada (incompleto), 6 - Sair\n');
    stdout.write("Opção: ");

    entrada = stdin.readLineSync();

    if (entrada != null && comandos.contains(entrada)) {
      return entrada;
    } else {
      print("Opção inválida!\n");
      return getComando(); // Recursively call until valid input is given
    }
    }
  
  List<String> adicionaNota (List<String> notas) {

    print("Escreva uma nota abaixo...");
    String? nota = "";
    nota = stdin.readLineSync();

    if (nota == null || nota.isEmpty) {
      print('Não é possível adicionar uma nota vazia! \n');
      return adicionaNota(notas);
    }
    notas.add(nota!); 
    
    return notas;

    }

  void listaNotas(List<String> notas) {
    if (notas.isEmpty) {
      print("Nenhuma nota para listar.\n");
      return;
    }

    // for (int i = 0; i < notas.length; i++) {
    //   print('${i+1} - ${notas[i]}');
    // }
    int i = 1;
    for (String nota in notas) {
      print('$i - $nota');
      i++;
    }
    print(""); // Add a newline for better formatting
  }

  void a5_lex1() {
    print("Imprimindo 5 numeros de 1 a 5...\n");
    print("");
    List<int> numeros = [1,2,3,4,5];
    for (int numero in numeros) {
      print("$numero");
    }

  }

  void a5_lex2() {
    print("Imprimindo os nomes solicitados...\n");
    print("");
    List<String> nomes = ["Ana","João","Maria"];

    for (String nome in nomes) {
      print("Nome: $nome");
    }

  }

  void a5_lex3() {
    print("Em busca da parada.\n");
    print("");
    
    

  }

  List<String> notas = <String>[];
  String comando = "";

  do {
    comando = getComando();

    switch (comando) {
      case "1":
        notas = adicionaNota(notas);
        print("Nota adicionada com sucesso!\n");
        break;
      case "2":
        listaNotas(notas);
        break;
      case "3":
        a5_lex1();
        break;
      case "4":
        a5_lex2();
        break;
      case "5":
        a5_lex3();
        break;
      case "6":
        print('Até mais!\n');
        break;


      default:
        print('Opção inválida!');
        break;
    }
  } while (comando != "3");

}
