import 'NotaFiscalBuilder.dart';
import 'models/notaFiscal.dart';

void main() {
  var builder = NotaFiscalBuilder()
    ..paraEmpresa('Ifood')
    ..comCnpj('065451545')
    ..com(ItemDaNota('I1', 20.0))
    ..com(ItemDaNota('I2', 30.0))
    ..com(ItemDaNota('I3', 40.0))
    ..com(ItemDaNota('I4', 50.0))
    ..naData('2020-06-16')
    ..comObservacoes('Aqui tem comida');

  NotaFiscal nf = builder.constroi();
  print(nf);
}
