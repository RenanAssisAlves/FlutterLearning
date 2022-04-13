import 'package:flutter/material.dart';

import 'Jogar.dart';
import 'dart:math';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  void _exibirResultado()
  {
    int randomNumber = Random().nextInt(2);
    print(randomNumber);
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => Jogar(randomNumber)));
  }

  Widget build(BuildContext context) {
    return Container(padding: EdgeInsets.all(32),
    child: Column(children: [
      Image.asset("imagens/logo.png"),
      Padding(padding: EdgeInsets.only(top: 32)),
      GestureDetector(onTap: _exibirResultado,
        child: Image.asset("imagens/botao_jogar.png"),
      )
    ],
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
    ),
      color: Color(0xff61bd8c),
    );
  }
}
