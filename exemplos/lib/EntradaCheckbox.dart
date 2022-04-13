
import 'package:flutter/material.dart';

class EntradaCheckBox extends StatefulWidget {
  const EntradaCheckBox({Key? key}) : super(key: key);

  @override
  _EntradaCheckBoxState createState() => _EntradaCheckBoxState();
}

class _EntradaCheckBoxState extends State<EntradaCheckBox> {
  bool? _comidaBrasileira = false;
  bool? _comidaMexicana = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:
        Text("Entrada de dados"),
      ),
      body: Container(
        child: Column(
          children: [
            CheckboxListTile(
              title: Text("Comida Brasileira"),
                subtitle: Text("A melhor comida do mundo"),
                value: _comidaBrasileira,
                onChanged: (bool? valor){
                setState(() {
                  _comidaBrasileira = valor;
                });

                },),
            CheckboxListTile(
              title: Text("Comida Mexicana"),
              subtitle: Text("A melhor comida do mundo"),
              value: _comidaMexicana,
              onChanged: (bool? valor){
                setState(() {
                  _comidaMexicana = valor;
                });

              },),
            ElevatedButton(onPressed: ()
                {
                  print(" Comida Brasileira: " + _comidaBrasileira.toString() +
                      "\nComida mexicana: " + _comidaMexicana.toString()

                  );
                }, child: Text("Salvar"), style: ElevatedButton.styleFrom(textStyle: TextStyle(
              fontSize: 20
            ),
            )
            )

            // Text("Comida Brasileira"),
            // Checkbox(value: _estaSelecionado,
            //     onChanged: (bool? valor){
            //       setState(() {
            //         _estaSelecionado = valor;
            //       });
            //       print("Checkbox : " + valor.toString());
            // },
            // )
          ],
        ),
      ),
    );
  }
}
