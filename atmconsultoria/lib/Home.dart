import 'package:atmconsultoria/TelaServico.dart';
import 'package:flutter/material.dart';

import 'TelaCliente.dart';
import 'TelaContato.dart';
import 'TelaEmpresa.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  void _abrirEmpresa()
  {
    Navigator.push(context, MaterialPageRoute(builder: (context) => TelaEmpresa()));
  }

  void _abrirServico()
  {
    Navigator.push(context, MaterialPageRoute(builder: (context) => TelaServico()));
  }

  void _abrirCliente()
  {
    Navigator.push(context, MaterialPageRoute(builder: (context) => TelaCliente()));
  }

  void _abrirContato()
  {
    Navigator.push(context, MaterialPageRoute(builder: (context) => TelaContato()));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ATM Consultoria"),
        backgroundColor: Colors.green,
      ),
      body: Container(
        padding: EdgeInsets.all(32),
        child: Column(children: [
          Padding(padding: EdgeInsets.only(top: 32)),
          Image.asset("imagens/logo.png"),
          Padding(padding: EdgeInsets.all(32)),
          Row(children: [
            GestureDetector(onTap: () {
              _abrirEmpresa();
            },
            child: Image.asset("imagens/menu_empresa.png"),
            ),
            GestureDetector(onTap: () {
              _abrirServico();
            },
            child: Image.asset("imagens/menu_servico.png"),
            ),

          ],
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          ),
          Padding(padding: EdgeInsets.all(32)),
          Row(children: [
            GestureDetector(onTap: () {
              _abrirCliente();
            },
            child: Image.asset("imagens/menu_cliente.png"),
                ),
            GestureDetector(onTap: () {
              _abrirContato();
            },
              child: Image.asset("imagens/menu_contato.png"),
            ),
          ],
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          )
        ],

          crossAxisAlignment: CrossAxisAlignment.center,
        ),
        width: double.infinity,),
    );
  }
}