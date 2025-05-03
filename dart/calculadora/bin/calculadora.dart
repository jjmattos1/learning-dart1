import 'dart:io';

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
  double numeroUm = double.parse(stdin.readLineSync()!);
  double numeroDois = double.parse(stdin.readLineSync()!);
  print(numeroUm+numeroDois);
  print("\n\n");
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
  


}
