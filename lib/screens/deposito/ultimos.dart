import 'package:bytebank/models/deposito.dart';
import 'package:bytebank/models/depositos.dart';
import 'package:bytebank/screens/transferencia/lista.dart';
import 'package:bytebank/screens/transferencia/ultimas.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

final _titulo = 'Ultimos depositos';
final _mensagemSemDeposito = 'Você ainda não realizou nenhum depósito';
class UltimosDepositos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(_titulo, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
        Consumer<Depositos>(
          builder: (context, depositos, child) {
            final List<Deposito> _ultimosDepositos = depositos.depositos.reversed.toList();
            final int _quantidade = depositos.depositos.length;
            int _tamanho = 2;

            if (_quantidade == 0) {
              return AvisoDepositoTransferencia(_mensagemSemDeposito);
            }

            if (_quantidade < 2) {
              _tamanho = _quantidade;
            }

            return ListView.builder(
                padding: const EdgeInsets.all(8),
                itemCount: _tamanho,
                shrinkWrap: true,
                itemBuilder: (context, indice) {
                  return ItemDeposito(_ultimosDepositos[indice]);
                }
            );
          }),
      ],
    );
  }
}
