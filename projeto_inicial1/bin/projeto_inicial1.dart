import 'package:projeto_inicial1/projeto_inicial1.dart' as projeto_inicial1;

void main() {
  print('Hello world: ${projeto_inicial1.calculate()}!');
  // projeto_inicial1 devido ao primeiro projeto ter bugado, de alguma forma, o
  // VS Code a ponto dele congelar a tela toda vez que o projeto era carregado
  // https://medium.com/dart-school-by-kmranrg/chapter-3-type-casting-in-dart-76837475772a
  // ctrl+shift+p = new project | começar novo projeto a partir de um modelo, que nem esse
  // aqui do dart.
  // shift+tab deleta um nível de indentação!
  // String to int
  var one = int.parse('1');
  print("1.");
  print(one);
  print(one.runtimeType);

  // String to double
  var onePointOne = double.parse('1.1');
  print("\n2.");
  print(onePointOne);
  print(onePointOne.runtimeType);

  // int to String
  var twenty = 20.toString();
  print("\n3.");
  print(twenty);
  print(twenty.runtimeType);

  // double to String
  var pi = 3.14316.toStringAsFixed(2);
  print("\n4.");
  print(pi);
  print(pi.runtimeType);

  // Creating five String variables with random names
  String city = 'New York';
  String country = 'USA';
  String hobby = 'Reading';
  String favoriteFood = 'Pizza';
  String favoriteColor = 'Blue';

  List<String> stringList = [city, country, hobby, favoriteFood, favoriteColor];

  List<dynamic> dynamicList = [one, onePointOne, twenty, pi, city, country, hobby, favoriteFood, favoriteColor];
  print('\n--- Teste de lista dinamica inicio ---\n');
  print('\n$dynamicList\n');
  print('\n--- Teste de lista dinamica fim ---\n');
  
  print('Testando acesso a posições na lista...\n');
  print(dynamicList[7]);
  print(dynamicList[8]);
  // print(dynamicList[1]dynamicList[3]);
  print('');
  // por ser uma lista dinamica, se precisou criar ela com o tipo var, para receber..
  // diferentes tipos de dados
  var dynamicListLenght = dynamicList.length;
  print('\nComprimento da lista: $dynamicListLenght\n');
  String dynamicListPrint = '\nImprimindo lista dinâmica:\n' 
  '\nConteúdo pos 7 ${dynamicList[6]}\n'
  '\nConteúdo pos 8 ${dynamicList[7]}\n'
  '\nConteúdo pos 9 ${dynamicList[8]}\n';

  print(dynamicListPrint);
  print('\n$stringList\n');
  // lembrar de que o custo de uma lista dinamica sempre será maior, pois pode ser
  // qualquer tipo de dado. A boa pratica diz para sempre definir de qual tipo vai
  // ser a lista.
  // funções para listas:
  // https://codeburst.io/top-10-array-utility-methods-you-should-know-dart-feb2648ee3a2
  const String nome = 'Jonas Const'; // definindo como const, essa varíavel não pode ser atualizada
  print (nome);
  final String apelido; // mesma função base que o const, mas permite criar a varíavel..
  // como nula, para ela depois ser utilizada. Mas ela só pode ser utilizada uma vez!
  apelido = 'JJ';
  print(apelido);
  print('\n\n\n');
  // se pod criar uma variavel com o tipo var, desta forma ela não fica com um tipo definido.
  // Mas, mais uma vez, não é uma boa pratica. Pois pesa mais no custo do código.
  
  // usando código exemplo abaixo do curso para prosseguir nos testes...

  // Definimos nossa Lista com todos os Status da Persona

  int idade = 27;
  double altura = 1.86;
  bool geek = true;
List<dynamic> kako = [idade, altura, geek, nome, apelido];

//Frase que recebe os dados diretamente da Lista
String frase = 'Eu sou ${kako[4]}\n'
   'mas meu nome completo é: ${kako[3]},\n'
   'eu me considero geek? ${kako[2]}.\n'
   'Eu tenho ${kako[1]} metros de altura e \n'
   '${kako[0]} anos de idade\n'
;
print(frase);
}
