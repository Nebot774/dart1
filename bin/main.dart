import 'package:args/args.dart';
//importamos las otras dos clases
import 'api_service.dart';
import 'comarca.dart'

const String version = '0.0.1';

//PARA EL PUNTO DE ENTRADA Y LA LOGICA DE MANEJO DE LOS ARGUMENTOS DE LA LINEA DE COMANDOS
void main(List<String> args) async {
  try {
    // Verificamos que se han pasado los argumentos suficientes
    if (args.length >= 2) {
      var comando = args[0];
      var nombre = args[1];

      if (comando == 'comarques') {
        // Manejamos el comando 'comarques'
        var comarcas = await getComarcas(nombre);
        // Imprimimos la lista de comarcas o procesa como necesites
        print(comarcas);
      } else if (comando == 'infocomarca') {
        // Maneja el comando 'infocomarca'
        var infoComarcaJson = await getInfoComarca(nombre);
        var comarca = Comarca.fromJSON(infoComarcaJson);
        print(comarca.toString());
      } else {
        print('Comando no reconocido.');
      }
    } else {
      print('Argumentos insuficientes. Uso: dart run ejercicio [comando] [nombre]');
    }
  } catch (e) {
    print('Error: $e');
  }

}










