import '../acao_posterior_interface.dart';
import 'notaFiscal.dart';

class Multiplicador implements IAcaoPosterior {
  double _valor;

  Multiplicador(this._valor);

  @override
  void executa(NotaFiscal notaFiscal) {
    final resultado = notaFiscal.valorBruto * _valor;
    print("Valor bruto multiplicado: $resultado");
  }
}
