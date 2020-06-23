import '../acao_posterior_interface.dart';
import 'notaFiscal.dart';

class Impressora implements IAcaoPosterior{
  @override
  void executa(NotaFiscal notaFiscal) {
    print('Nota impressa');
  }

}