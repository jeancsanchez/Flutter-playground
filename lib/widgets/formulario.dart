import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/model/transferencia.dart';

class Formulario extends StatelessWidget {
  final TextEditingController _controllerNumConta = TextEditingController();
  final TextEditingController _controllerValor = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Nova transferência'),
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              style: TextStyle(fontSize: 18.0),
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  labelText: 'Número da conta', hintText: '0000'),
              controller: _controllerNumConta,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              style: TextStyle(fontSize: 16.0),
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  labelText: 'Valor',
                  hintText: '0000',
                  icon: Icon(Icons.monetization_on)),
              controller: _controllerValor,
            ),
          ),
          RaisedButton(
            child: Text('Confirmar'),
            onPressed: () {
              final conta = int.tryParse(_controllerNumConta.text);
              final valor = int.tryParse(_controllerValor.text);
              final transferencia = Transferencia(conta, valor);

              Navigator.pop(context, transferencia);
            },
          )
        ],
      ),
    );
  }
}
