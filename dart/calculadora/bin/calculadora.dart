import 'dart:io';
import "calc-v2.dart";

void main() {
  /* primeiros testes...
  var numeroUm = stdin.readLineSync();
  var numeroDois = stdin.readLineSync();
  var resultado;
  //var operacao = stdin.readLineSync();
  // colocando o !, se utiliza do recurso null Safety, e dessa forma conseguimos usar a variavel desse jeito,
  // indicando para o dart que pode ser uma variavel nula.
  //print(numeroUm!+numeroDois!);
  // aqui usando a dica de colocar o !, mas tambem precisa usar a funcao ".parse" para converter a string
  */
  //print(numeroUm+numeroDois);
  /* o Dart tem um tipo primitivo chamado de rune (risos), ele é o mesmo que um tipo char em outra linguagem
  serve para armazenar apenas um caractere (um único caractere, como 'a', 'B' ou '3'). */
  /* Tipos compostos:
  Já os tipos compostos são como se fossem conjuntos de peças do quebra-cabeça que se unem para criar algo maior. Ou seja, são tipos compostos por mais de uma parte.
  Tipos compostos utilizam como base tipos primitivos e até outros tipos compostos. No Dart, os principais tipos compostos são:
  Listas: List Armazenam valores ordenados do mesmo tipo, como uma lista de compras com itens repetidos ou não.
  Mapas: Map Associam chaves únicas a valores, como uma agenda telefônica com nomes e números de telefone.
  Conjuntos: Set Coleções de valores não ordenados e sem valores repetidos, como um conjunto de cartas de baralho sem repetições.
  
  Set<int> numerosUnicos = {1, 2, 3, 4, 3}; // O número 3 só aparece uma vez
  print(numerosUnicos); // Saída: {1, 2, 3, 4}
  */

  // CRIAR VALIDAÇÕES NOS CAMPOS DE ESCOLHA DE OPÇÕES!! Ver orientações em https://cursos.alura.com.br/course/dart-trabalhando-sintaxe-configuracao-projeto/task/166221

// refatorar código seguindo orientação do link https://cursos.alura.com.br/course/dart-trabalhando-sintaxe-configuracao-projeto/task/164854

    void calcV1() {

  var resultado, operacao = "";

  void getOperacao {

          print("Selecione uma das opções (+, -, *, /): ");
          var operacao = stdin.readLineSync();

  }

  print("Digite o primeiro número: ");
  var numeroUm = double.parse(stdin.readLineSync()!);
  print("Digite o segundo número: ");
  var numeroDois = double.parse(stdin.readLineSync()!);

  void soma() {
    resultado = numeroUm + numeroDois;
  }
  void subtracao() {
    resultado = numeroUm - numeroDois;
  }
  void multiplicacao() {
    resultado = numeroUm * numeroDois;
  }
  void divisao() {
    resultado = numeroUm / numeroDois;
  }

  if (operacao == "+") {
    soma();
  } else if (operacao == "-") {
    subtracao();
  } else if (operacao == "*") {
    multiplicacao();
  } else if (operacao == "/") {
    divisao();
  }
  print("O resultado é: $resultado");
  //print("\n");
}

  print("\nCalculadoras!\n");

  print('1. Calculadora V1 if else');
  print('2. Calculadora V2 switch case');
  stdout.write("\nSelecione uma das versões da calculadora: ");
  int MenuOp = int.parse(stdin.readLineSync()!);

  if (MenuOp == 1) {
    calcV1();
  } else if (MenuOp == 2) {
    calcV2();
  } 
  else {
    print("Opção inválida.");
  }

}
