import 'package:flutter/material.dart';
import 'package:flutter_app/widgets/lista_transferencias.dart';

void main() => runApp(
      MaterialApp(
        home: HomePage(),
      ),
    );

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListaDeTransferencias(),
    );
  }
}
