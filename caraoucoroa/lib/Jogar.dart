import 'package:flutter/material.dart';

import 'Home.dart';

class Jogar extends StatefulWidget {
  int valorSorteio;

  Jogar(this.valorSorteio);

  @override
  _JogarState createState() => _JogarState();
}

class _JogarState extends State<Jogar> {
  late var valorSorteio = widget.valorSorteio;
  var teste;
  AssetImage definirMoeda()
  {
    var imagem;
    if(valorSorteio == 0)
      {
         imagem = AssetImage("imagens/moeda_cara.png");
      }
    else if (valorSorteio == 1)
      {
       imagem = AssetImage("imagens/moeda_coroa.png");
      }
    print(valorSorteio);
    return imagem;
  }

  late var imagem = definirMoeda();

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff61bd8c),
      padding: EdgeInsets.all(32),
      child: Column(
        children: [
          Image(image: imagem,),
          Padding(padding: EdgeInsets.only(top:32)),
          GestureDetector(onTap: () {
           Navigator.pop(context);
          },
            child: Image.asset("imagens/botao_voltar.png"),
          )
        ],
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
      ),
    );
  }
}
