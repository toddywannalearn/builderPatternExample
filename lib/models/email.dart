import '../acao_posterior_interface.dart';
import 'notaFiscal.dart';

class Email implements IAcaoPosterior{
  @override
  void executa(NotaFiscal notaFiscal) {
    print('Nota enviada por email');
  }

}