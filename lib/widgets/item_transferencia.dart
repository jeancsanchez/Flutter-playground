import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ItemTransferencia extends StatelessWidget {
  final String _titulo;
  final double _valor;

  ItemTransferencia(this._titulo, this._valor)
      : assert(_titulo != null),
        assert(_valor != null);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Icon(Icons.monetization_on),
        title: Text(this._titulo),
        subtitle: Text(this._valor.toString()),
      ),
    );
  }
}
