import 'package:flutter/material.dart';

class EntradaSlider extends StatefulWidget {
  const EntradaSlider({Key? key}) : super(key: key);

  @override
  _EntradaSliderState createState() => _EntradaSliderState();
}

class _EntradaSliderState extends State<EntradaSlider> {
  double valor = 5;
  String label = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:
      Text("Entrada de dados"),
      ),
      body: Container(
        child: Column(children: [
          Slider(value: valor, onChanged: (double novoValor)
          {
            print("Valor Selecionado: " + novoValor.toString());
            setState(() {
              valor=novoValor;
              label="Valor Selecionado: " + valor.toString();
            });
          },
            label: label,
            divisions: 10,
          min: 0,
          max: 10,),
          ElevatedButton(onPressed: ()
              {

              }, child: Text("Salvar",style: TextStyle(fontSize: 20),))
        ],
        ),
      ),
    );
  }
}
