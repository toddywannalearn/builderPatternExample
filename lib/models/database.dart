import '../acao_posterior_interface.dart';
import 'notaFiscal.dart';

class Database implements IAcaoPosterior{
  @override
  void executa(NotaFiscal notaFiscal) {
    print('Nota salva no banco');
  }

}