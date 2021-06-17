import 'package:bytebank/models/Saldo.dart';
import 'package:bytebank/models/depositos.dart';
import 'package:bytebank/models/transferencias.dart';
import 'package:bytebank/screens/dashboard/dashboard.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() => runApp(MultiProvider(
  providers: [
    ChangeNotifierProvider(create: (context) => Saldo(0)),
    ChangeNotifierProvider(create: (context) => Transferencias()),
    ChangeNotifierProvider(create: (context) => Depositos())
  ],
  child: BytebankApp(),
));

class BytebankApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.green[900],
        accentColor: Colors.blueAccent[700],
        buttonTheme: ButtonThemeData(
          buttonColor: Colors.blueAccent[700],
          textTheme: ButtonTextTheme.primary,
        ),
      ),
      home: Dashboard(),
    );
  }
}
