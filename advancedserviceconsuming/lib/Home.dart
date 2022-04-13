import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Future<Map> _getPrice() async {
    const String url = "https://blockchain.info/ticker";

    http.Response response = await http.get(url);
    return json.decode(response.body);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<Map>(
      future: _getPrice(),
      builder: (context, snapshot) {
        String resultado = "O resultado aparecerá aqui";
        switch(snapshot.connectionState)
        {
          case ConnectionState.none:
            print("Connection none");
            break;
          case ConnectionState.waiting:
            print("Connection waiting");
            resultado = ("Loading...");
            break;
          case ConnectionState.active:
            print("Connection active");
            break;
          case ConnectionState.done:
            print("Connection done");
            if(snapshot.hasError)
              {
                resultado = "Erro ao carregar os dados";
              }else {
                double valor = snapshot.data!["BRL"]["buy"];
                resultado = "Preço do bitcoin: ${valor.toString()}";
              }
            break;
        }
        return Center(
          child: Text(resultado),
        );
      },
    );
  }
}
