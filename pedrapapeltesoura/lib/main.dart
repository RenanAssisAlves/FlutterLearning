

import 'dart:math';

import 'package:flutter/material.dart';

void main()
{
  runApp(MaterialApp(home: Home(),
  debugShowCheckedModeBanner: false,));
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  var _imagemApp = AssetImage("images/padrao.png");
  var _mensagem = "Escolha uma imagem abaixo:";

  void opcaoSelecionada(String escolhaUsuario){
    var opcoes = ["pedra", "papel", "tesoura"];
    var numero = Random().nextInt(3);
    var escolhaApp = opcoes[numero];

    print("Escolha do app: " + escolhaApp);
    print("Escolha do usuario : " + escolhaUsuario);

    switch (escolhaApp)
    {
      case "pedra":
        setState(() {
          _imagemApp = AssetImage("images/pedra.png");
        });
        break;
      case "papel":
        setState(() {
          _imagemApp = AssetImage("images/papel.png");
        });
        break;
      case "tesoura":
        setState(() {
          _imagemApp = AssetImage("images/tesoura.png");
        });
        break;
    }

    if(
    ( escolhaUsuario == "pedra" && escolhaApp == "tesoura") ||
    ( escolhaUsuario == "tesoura" && escolhaApp == "papel") ||
        ( escolhaUsuario == "papel" && escolhaApp == "pedra")
    )  {
      setState(() {
        this._mensagem = "Você ganhou!";
      });


      }
    else
      {
        setState(() {
          this._mensagem = "Você perdeu!";
        });

      }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("Joken-po")),
    body: Container(width: double.infinity, child: Column(
      children: [
        Text("Escolha do App:",
        style: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold
        ),
        ),
        Image(image: this._imagemApp),
        Text(this._mensagem,
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold
        ),),
      Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
        GestureDetector(onTap: () => opcaoSelecionada("pedra"), child: Image.asset("images/pedra.png", height: 100)),
        GestureDetector(onTap: () => opcaoSelecionada("papel"), child: Image.asset("images/papel.png", height: 100)),
        GestureDetector(onTap: () => opcaoSelecionada("tesoura"), child: Image.asset("images/tesoura.png", height: 100)),
        // Image.asset("images/pedra.png", height: 100),
        // Image.asset("images/papel.png", height: 100),
        // Image.asset("images/tesoura.png", height: 100),
      ],
      ),
      ],
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
    ),
    ),
    );
  }
}
