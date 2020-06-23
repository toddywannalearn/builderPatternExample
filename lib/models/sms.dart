import '../acao_posterior_interface.dart';
import 'notaFiscal.dart';

class SMS implements IAcaoPosterior{
  @override
  void executa(NotaFiscal notaFiscal) {
    print('Nota enviada por SMS');
  }

}