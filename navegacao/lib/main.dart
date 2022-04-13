
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:navegacao/TelaSecundaria.dart';

void main()
{
  runApp(MaterialApp(
    initialRoute: "/",
    routes: {
      "/secundaria" : (context) => TelaSecundaria("teste"),
      "/detalhesFoto" : (context) => TelaSecundaria("test")
    },
    home: TelaPrincipal(),
  ));
}
class TelaPrincipal extends StatefulWidget {
  const TelaPrincipal({Key? key}) : super(key: key);

  @override
  _TelaPrincipalState createState() => _TelaPrincipalState();
}

class _TelaPrincipalState extends State<TelaPrincipal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tela Principal"),
        backgroundColor: Colors.orange,
      ),
      body: Container(
        padding: EdgeInsets.all(32),
        child: Column(
          children: [
            ElevatedButton(onPressed: () {
              Navigator.pushNamed(context, "/secundaria");
            }, child: Text("Ir para a segunda tela")
            )
          ],
        ),
      ),
    );
  }
}
