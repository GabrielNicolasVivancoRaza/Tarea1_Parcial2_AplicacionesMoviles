import '../entities/operario.dart';
import '../entities/resultado_operario.dart';

class CalcularAumentoUseCase{
  ResultadoOperario ejecutar(Operario op){
    double aumento = 0;

    if(op.sueldo < 500){

      if(op.antiguedad >= 10){
        aumento = op.sueldo * 0.2;
      } else {
        aumento = op.sueldo * 0.1;
      }

    }

    final sueldoFinal = op.sueldo + aumento;
    return ResultadoOperario(aumento: aumento, sueldoFinal: sueldoFinal);
  }
}