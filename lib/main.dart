import 'package:flutter/material.dart';
import 'package:flutter_app/widgets/lista_transferencias.dart';

void main() => runApp(
      MaterialApp(
        theme: ThemeData(
            primaryColor: Colors.green[900],
            accentColor: Colors.blueAccent[700],
            buttonTheme: ButtonThemeData(
                buttonColor: Colors.blueAccent[700],
                textTheme: ButtonTextTheme.primary)),
        home: ListaDeTransferencias(),
      ),
    );
