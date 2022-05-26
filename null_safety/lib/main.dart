


import 'dart:math';

import 'package:flutter/material.dart';

//Parâmetros nomeados são por padrão opcionais
// int soma({required int primeiro, int segundo = 0}) {
//   return primeiro + segundo;
//}


// int totalCaracteres(String? texto){
  // if (texto == null)
  //   {
  //     return 0;
  //   }
//   if (texto == null) {
//     throw "Texto não pode ser nulo";
//   }
//   return texto.length;
// }

// class Usuario{
//   String? _nome;
//   int totalCaracteres(){
//     String? nome = _nome;
//     if (nome == null)
//       {
//         return 0;
//       }
//     return nome.length;
//   }
// }

//1) Late keyword
// class Usuario{
//   late String nome;
//   void configuraNome(String texto){
//     nome = texto;
//   }
// }

//2) Late com referência circular
// class Time {
//   late Treinador treinador;
// }
//
// class Treinador{
//   late Time time;
// }

// int calculaTotalItens(){
//   print("calculaTotalItens: 3");
//   return 3;
// }
//
// class Carrinho {
//   late int totalItens = calculaTotalItens();
// Late não executa o método imediatamente, deixando apenas para quando a propriedade for chamada
// }

//1) Inicialização de variáveis
//Variáveis SUperiores
int total = 0;

//Campos estáticos
class Pedidos{
  static int total = 0;
}

class Carrinho{
  int totalItens = 0;
  String item;
  String quantidade;
  Carrinho(this.item, this.quantidade);

}

//3 Variáveis locais

int calculaSalario(int salario){
  int resultado;
  if (salario > 1000){
    resultado = salario;
  } else{
    resultado = salario + 100;
  }
  return resultado;
}

void main() {
  // total = 10;
  // print("Total : $total");
  // print("Identificador ${Pedidos.total}");

  Carrinho carrinho = Carrinho("Capa de celular", "2");

  print(calculaSalario(900));

  // Carrinho carrinho = Carrinho();
  // print("Total : ${carrinho.totalItens}");

    // Usuario usuario = Usuario();
    // usuario.configuraNome("Teste");


  // Time time = Time();
  // Treinador treinador = Treinador();

  // time.treinador = treinador;
  // treinador.time = time;

    // print(totalCaracteres("Renan"));

  // String? texto;
  // texto = "Renan";
  //
  // if(DateTime.now().hour < 12)
  //   {
  //     texto = "Verdadeiro";
  //   } else {
  //   texto = "Falso";
  // }
  //
  //   print("Resultado : $texto");
  //   print("tamanho: ${texto.length}");


  // int resultado = soma(primeiro: 1, segundo: 2);
  // print("Resultado: ${resultado}");





  // print("Lista: ${lista2}");


  // runApp(MaterialApp(
  // title: "Null check lesson",
  // home: Home(),
  // ));

//Variável não pode ser nula
//   String nome = "Nome";
//   int idade = 10;
//   double altura = 1.1;
//
//   String? complemento;
//   int? numero;
//   double? preco;

  //Variáveis nulas
  //dobule? int? bool? List?

  //Variáveis não nulas
  //double int bool List

  // int? numero = 10;
  // int resultado = numero;
  //
  // print("Resultado é: $resultado" );

  //String? (Pode ser nulo) -> Não consegue chamar métodos
  //String (NÃO pode ser nulo) -> pode chamar métodos

  // String? nome = null ?? "Renan";
  // print("Total de caracteres ${nome.length}");

  /*
  *Como Utilizar os operadores ? & !
   */

  // List<String> lista1 = ["Morango", "Banana", "Melão"];
  // List<String>? lista2;
  // List<String?> lista3 = ["Morango", null, "Melão"];

  // print("Lista1 : $lista1");
  // print("Lista2 : $lista2");
  // print("Lista3 : $lista3");

  // List<String?> lista3 = ["Morango", null, "Melão"];
  // String valor = lista3.first!;
  // print("Valor é : ${valor}");

  //Operador (?.) -> Null aware operator
  // List<String>? lista;
  //
  // print("Total de itens: ${lista?.length}");
  
  // Random? random;
  // random = Random();
  // print("Número aleatório: ${random?.nextInt(10)}");

  /*
  Lista pode ser nula? SIM
  Item pode ser nulo? NÃO
   */

  // List<String>? lista2;
  // print("Lista 2: ${lista2}");

  /*
  Lista pode ser nula? NÃO
  Item pode ser nulo? SIM
   */

  // List<String?> lista3 = [null];
  // print("Lista 3: ${lista3}");

  /*
  Lista pode ser nula? NÃO
  Item pode ser nulo? SIM
   */

  // List<String?>? lista4;
  // print("Lista 3: ${lista4}");

  /*
  Map  pode ser nula? NÃO
  Item pode ser nulo? NÃO
   */

  // Map<String, int> map1 = {};
  // print("Map 1: ${map1}");

  /*
  Map  pode ser nula? SIM
  Item pode ser nulo? NÃO
   */

  // Map<String, int>? map2;
  // print("Map 2: ${map2}");

  /*
  Map  pode ser nula? NÃO
  Item pode ser nulo? SIM
   */

  //Map<String, int?> map3 = {"idade" : null};
  //print("Map 3: ${map3}");

  /*
  Map  pode ser nula? SIM
  Item pode ser nulo? SIM
   */

  // Map<String, int?>? map4 = {"idade" : null};
  // print("Map 4: ${map4}");


  //Exemplos de Maps
  // Map<String, String?> estados = {
  //   "SP" : "São Paulo",
  //   "RJ" : "Rio de Janeiro",
  // };
  //
  // estados["MG"] = "Minas Gerais";
  // estados["MG"] = null;
  //
  // String valor = estados["SP"]!;
  //
  // print("Estados: ${estados}");

}
