import 'models/notaFiscal.dart';

class NotaFiscalBuilder {
  String _razaoSocial;
  String _cnpj;
  double _valorBruto = 0.0;
  double _impostos = 0.0;
  DateTime _data;
  String _observacoes;
  List<ItemDaNota> _todosOsItens = List();

  NotaFiscalBuilder(){
    this._data = DateTime.now();
  }

  NotaFiscal constroi() {
    return NotaFiscal(_razaoSocial, _cnpj, _data, _valorBruto, _impostos,
        _todosOsItens, _observacoes);
  }

  void paraEmpresa(String razaoSocial) {
    this._razaoSocial = razaoSocial;
  }

  void comCnpj(String cnpj) {
    this._cnpj = cnpj;
  }

  void com(ItemDaNota item) {
    _todosOsItens.add(item);
    _valorBruto += item.valor;
    _impostos += item.valor * 0.05;
  }

  void comObservacoes(String observacoes) {
    this._observacoes = observacoes;
  }

  void naData(String data) {
    this._data = DateTime.parse(data);
  }
}
