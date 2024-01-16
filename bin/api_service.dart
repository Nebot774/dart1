//importacion librerias
import 'dart:convert';

import 'package:args/args.dart';
import 'package:http/http.dart' as http;

const String version = '0.0.1';

//funcion para obtener un listado de comarcas de una provincia
//recibe el nombre de la provincia como argumento
Future<List<dynamic>> getComarcas(String provincia) async {
  //Construimos la URL utilizando la provincia proporcionada
  var url = 'https://node-comarques-rest-server-production.up.railway.app/api/comarques/$provincia';


  //Realizamos una solicitud GET a la URL y esperamos la respuesta
  var respuesta = await http.get(Uri.parse(url)); //await espera a que se complete la operacion para poder seguir

  //verificamos el codigo de estado de la respuesta
  if (respuesta.statusCode == 200) {
    //si el codigo de estado es 200 que seria exitoso descodificamos el cuerpo de la respuesta JSON  a una lsita dina
    return jsonDecode(respuesta.body);
  } else {
    print('Código de Estado: ${respuesta.statusCode}');
    print('Respuesta: ${respuesta.body}');
    //si el codigo de estado no es 200 lanzamos una excepcion
    throw Exception('Error 77777 en la solicitud de la provincia $provincia');
  }
}

  //funcion para obtener informacion detallada de una comarca
//recibe el nombre de la comarca como argumento
  Future<Map<String, dynamic>> getInfoComarcas(String comarca) async {
    //Construimos la URL utilizando la provincia proporcionada
    var url = 'https://node-comarques-rest-server-production.up.railway.app/api/comarques/infocomarca/$comarca';

    //Realizamos una solicitud GET a la URL y esperamos la respuesta
    var respuesta = await http.get(Uri.parse(url)); //await espera a que se complete la operacion para poder seguir

    //verificamos el codigo de estado de la respuesta
    if (respuesta.statusCode == 200) {
      //si el codigo de estado es 200 que seria exitoso descodificamos el cuerpo de la respuesta JSON  a una lsita dina
      return jsonDecode(respuesta.body);
    } else {
      //si el codigo de estado no es 200 lanzamos una excepcion
      throw Exception('Error en la solicitud de la informacion de la comarca $comarca');
    }

  }



