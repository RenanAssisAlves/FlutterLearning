import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {


  TextEditingController _precoAlcool = TextEditingController();
  TextEditingController _precoGasolina = TextEditingController();
  String _textoResultado = "";
  @override
  Widget build(BuildContext context) {

    void _calcular(){
      double? precoAlcool = double.tryParse(_precoAlcool.text);
      double? precoGasolina = double.tryParse(_precoGasolina.text);

      if( precoAlcool == null || precoGasolina == null)
        {

          setState(() {
            _textoResultado = ("Número inválido, digite números maiores que 0 e utilizando (.) ");
          });

        }else{
        if ((precoAlcool/precoGasolina) >= 0.7)
          {
            setState(() {
              _textoResultado = "Melhor abastecer com gasolina";
            });
          }
        else
          {
            setState(() {
              _textoResultado = "Melhor abastecer com álcool";
            });
          }
      }

    }

    return Scaffold(
      appBar: AppBar(
        title: Text("Álcool ou gasolina"),
      ),
      body: Padding(
        padding: EdgeInsets.all(32),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Image.asset("imagens/logo.png"),
              Text("Saiba qual a melhor opção para abastecimento do seu carro",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 32
                ),
              ),
              TextField(
                decoration: InputDecoration(
                    labelText: "Preço Álcool, ex: 1.59"
                ),
                controller: _precoAlcool,
                onSubmitted: (String texto){},
                keyboardType: TextInputType.number,
              ),
              TextField(
                decoration: InputDecoration(
                    labelText: "Preço Gasolina, ex: 3.15"
                ),
                controller: _precoGasolina,
                onSubmitted: (String texto) {},
                keyboardType: TextInputType.number,
              ),
              ElevatedButton(onPressed: () {
                _calcular();
              },
                child: Text("Calcular",
                  style: TextStyle(
                      fontSize: 24
                  ),
                ),
              ),
              Text(_textoResultado, style:
                TextStyle(
                  fontSize: 24
                ),
              )
            ],
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          ),
        )
      )
    );
  }
}
