import 'package:bytebank/models/deposito.dart';
import 'package:flutter/material.dart';

class Depositos extends ChangeNotifier {
  final List<Deposito> _depositos = [];

  List<Deposito> get depositos => _depositos;

  adiciona(Deposito novoDeposito) {
    _depositos.add(novoDeposito);

    notifyListeners();
  }
}