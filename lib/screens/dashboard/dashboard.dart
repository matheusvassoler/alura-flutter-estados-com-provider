import 'package:bytebank/models/Saldo.dart';
import 'package:bytebank/screens/dashboard/saldo.dart';
import 'package:bytebank/screens/deposito/formulario.dart';
import 'package:bytebank/screens/deposito/ultimos.dart';
import 'package:bytebank/screens/transferencia/formulario.dart';
import 'package:bytebank/screens/transferencia/lista.dart';
import 'package:bytebank/screens/transferencia/ultimas.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Dashboard extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Bytebank'),
        ),
        body: ListView(
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: SaldoCard()
              ),
               ButtonBar(
                 alignment: MainAxisAlignment.center,
                 children: [
                   ElevatedButton(
                       onPressed: () {
                         Navigator.push(
                             context,
                             MaterialPageRoute(builder: (context) {
                               return FormularioDeposito();
                             })
                         );
                       },
                       child: Text("Receber deposito")
                   ),
                   ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) {
                                return FormularioTransferencia();
                              })
                          );
                        },
                       child: Text("Nova transferencia")
                   )
                 ],
               ),
              UltimasTransferencias(),
              Padding(
                  padding: EdgeInsets.only(top: 20),
                  child: UltimosDepositos()
              )
            ]
        ),
    );
  }
}
