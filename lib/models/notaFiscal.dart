class NotaFiscal {
  String _razaoSocial;
  String _cnpj;
  DateTime _dataDeEmissao;
  double _valorBruto;
  double _impostos;
  List<ItemDaNota> itens;
  String observacoes;

  NotaFiscal(this._razaoSocial, this._cnpj, this._dataDeEmissao,
      this._valorBruto, this._impostos, this.itens, this.observacoes);

  double get impostos => _impostos;

  double get valorBruto => _valorBruto;

  DateTime get dataDeEmissao => _dataDeEmissao;

  String get cnpj => _cnpj;

  String get razaoSocial => _razaoSocial;

  @override
  String toString() {
    return 'NotaFiscal{_razaoSocial: $_razaoSocial, _cnpj: $_cnpj, _dataDeEmissao: $_dataDeEmissao, _valorBruto: $_valorBruto, _impostos: $_impostos, itens: $itens, observacoes: $observacoes}';
  }
}

class ItemDaNota {
  String nomeItem;
  double valor;

  ItemDaNota(this.nomeItem, this.valor);

  @override
  String toString() {
    return 'ItemDaNota{nomeItem: $nomeItem, valor: $valor}';
  }
}
