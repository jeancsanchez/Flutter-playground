import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/model/transferencia.dart';
import 'package:flutter_app/widgets/formulario.dart';
import 'package:flutter_app/widgets/item_transferencia.dart';

class ListaDeTransferencias extends StatefulWidget {
  final List<Transferencia> _list = List();

  @override
  State<StatefulWidget> createState() {
    return ListaTransferenciaState();
  }
}

class ListaTransferenciaState extends State<ListaDeTransferencias> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Lista de transferências')),
      body: ListView.builder(
        itemCount: widget._list.length,
        itemBuilder: (context, index) {
          final item = widget._list[index];
          return ItemTransferencia(
            item.titulo.toString(),
            double.tryParse(item.valor.toString()),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          final Future<Transferencia> future = Navigator.push(
            context,
            MaterialPageRoute(builder: (context) {
              return Formulario();
            }),
          );

          future.then((newTransferencia) {
            widget._list.add(newTransferencia);
          });
        },
      ),
    );
  }
}
