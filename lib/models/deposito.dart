class Deposito {
  double valor;

  Deposito(this.valor);

  String toStringValor() {
    return 'R\$ $valor';
  }
}