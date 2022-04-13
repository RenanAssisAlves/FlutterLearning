import 'package:flutter/material.dart';

class EntradaSwitch extends StatefulWidget {
  const EntradaSwitch({Key? key}) : super(key: key);

  @override
  _EntradaSwitchState createState() => _EntradaSwitchState();
}

class _EntradaSwitchState extends State<EntradaSwitch> {

  var _escolhaUsuario = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:
      Text("Entrada de dados"),
      ),
      body: Container(
        child: Column(children: [

          SwitchListTile(value: _escolhaUsuario, onChanged: (bool escolha)
          {
            setState(() {
              _escolhaUsuario = escolha;
            });
          })

        // Switch(value: _escolhaUsuario, onChanged: (bool escolha)
        // {
        //   setState(() {
        //     _escolhaUsuario = escolha;
        //   });
        // })
        ],
          
        ),
      ),
    );
  }
}
