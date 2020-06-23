import 'NotaFiscalBuilder.dart';
import 'acao_posterior_interface.dart';
import 'models/database.dart';
import 'models/impressora.dart';
import 'models/multiplicador.dart';
import 'models/notaFiscal.dart';
import 'models/sms.dart';

void main() {
  List<IAcaoPosterior> lista = List();

  /// Inclusao de acao pelo construtor da classe builder
  lista.add(Impressora());
  lista.add(Database());

  var builder = NotaFiscalBuilder(lista)
    ..paraEmpresa('Ifood')
    ..comCnpj('065451545')
    ..com(ItemDaNota('I1', 20.0))
    ..com(ItemDaNota('I2', 30.0))
    ..com(ItemDaNota('I3', 40.0))
    ..com(ItemDaNota('I4', 50.0))
    ..naData('2020-06-16')
    ..comObservacoes('Aqui tem comida');

  /// Inclusão de acao pelo metodo da classe builder
  builder.adicionaAcao(SMS());
  builder.adicionaAcao(Multiplicador(2));

  NotaFiscal nf = builder.constroi();
  print(nf);
}
