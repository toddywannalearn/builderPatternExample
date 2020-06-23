import 'models/notaFiscal.dart';
import 'acao_posterior_interface.dart';

class NotaFiscalBuilder {
  String _razaoSocial;
  String _cnpj;
  double _valorBruto = 0.0;
  double _impostos = 0.0;
  DateTime _data;
  String _observacoes;
  List<ItemDaNota> _todosOsItens = List();

  List<IAcaoPosterior> _acoesPosteriores = List();


  /// Ao inves de adicionar as acoes atraves do metodo, é possivel faze-lo utilizando o construtor do buider.
  NotaFiscalBuilder(List<IAcaoPosterior> lista){
    this._data = DateTime.now();
    this._acoesPosteriores = lista;
  }

  NotaFiscal constroi() {
    final nf = NotaFiscal(_razaoSocial, _cnpj, _data, _valorBruto, _impostos,
        _todosOsItens, _observacoes);

    for(IAcaoPosterior acao in _acoesPosteriores){
      acao.executa(nf);
    }
    return nf;
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

  void adicionaAcao(IAcaoPosterior novaAcao){
    this._acoesPosteriores.add(novaAcao);
  }
}
