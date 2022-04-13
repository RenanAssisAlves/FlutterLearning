import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
class Principal extends StatefulWidget {
  const Principal({Key? key}) : super(key: key);

  @override
  _PrincipalState createState() => _PrincipalState();
}

class _PrincipalState extends State<Principal> {
  String preco = "<<Preço>>";

  pegarPreco() async
  {
    String url = "https://blockchain.info/ticker";
    http.Response response;

    response = await http.get(url);

    Map<String, dynamic> retorno = json.decode(response.body);

    setState(() {
      String precoString = retorno["BRL"]["buy"].toString();
      preco = "R\$: " + precoString + " BRL";
    });

  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(30),
      child: Column(children: [
        Image.asset("imagens/bitcoin.png"),
        Padding(padding: EdgeInsets.all(5)),
        Text(preco,
        style: TextStyle
          (
          color: Colors.grey,
          fontSize: 24,
          decoration: TextDecoration.none,
        ),
        ),
        Padding(padding: EdgeInsets.all(5)),
        ElevatedButton(onPressed: pegarPreco,
            child: Text("Atualizar"),
        style: ElevatedButton.styleFrom(primary: Colors.orange))
      ],
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
      ),
      color: Colors.white,
    );
  }
}
