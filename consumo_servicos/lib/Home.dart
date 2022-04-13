import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String _resultado = "Resultado";

  TextEditingController _controllerCep = TextEditingController();

  void _recuperarCep() async
  {
    String cepDigitado = _controllerCep.text;
    String url = "https://viacep.com.br/ws/${cepDigitado}/json/";

    http.Response response;

    response = await http.get(url);

    print("Resposta: " + response.body);


    Map<String, dynamic> retorno = json.decode(response.body);

    String logradouro = retorno["logradouro"];
    String complemento = retorno["complemento"];
    String bairro = retorno["bairro"];
    String localidade = retorno["localidade"];

   print("Resposta Longradouro : ${logradouro} complemento: ${complemento} bairro: ${bairro} localidade: ${localidade}");

   setState(() {
     _resultado = "${logradouro}, ${complemento}, ${bairro}, ${localidade}";
   });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("Consumo de serviço web"),
    ),
      body: Container(
        padding: EdgeInsets.all(40),
        child: Column(
          children: [
            TextField(keyboardType: TextInputType.number,
            decoration: InputDecoration(
              labelText: "Digite o cep: ex: 05428200",
            ),
            style: TextStyle(
              fontSize: 20
            ),
            controller: _controllerCep,
            ),
            Text(_resultado),

            ElevatedButton(onPressed: _recuperarCep, child: Text("Clique Aqui")
            )
          ],
        ),
      ),
    );
  }
}
