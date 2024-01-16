import 'package:args/args.dart';

const String version = '0.0.1';

//PARA LA CLASE COMARCA


class Comarca {
  String nombre;
  String? capital;
  String? poblacion;
  String? img;
  String? desc;
  double? latitud;
  double? longitud;

  //constructor normal
  Comarca({
    required this.nombre,
    this.capital,
    this.poblacion,
    this.img,
    this.desc,
    this.latitud,
    this.longitud,
  });

  //constructor que inicializa una comarca a partir de un objeto JSON
  Comarca.fromJSON(Map<String, dynamic> json)
    : nombre = json['nombre'] ?? 'Nombre predeterminado',
      capital=json['capital'],
      poblacion=json['poblacion'],
      img=json['img'],
      desc=json['desc'],
      //extaemos la latitud y la longitud de las primeras dos posiciones del vector
        latitud = json['coordenadas'] != null ? json['coordenadas'][0] : null,
        longitud = json['coordenadas'] != null ? json['coordenadas'][1] : null;



  @override
  String toString() {
    // Crea un String con la información de la comarca formateada.
    return 'nombre: $nombre\n'
        'capital: ${capital ?? "No disponible"}\n'
        'población: ${poblacion ?? "No disponible"}\n'
        'Imagen: ${img ?? "No disponible"}\n'
        'descripción: ${desc ?? "No disponible"}\n'
        'Coordenadas: (${latitud?.toStringAsFixed(7)}, ${longitud?.toStringAsFixed(7)})';
  }
}















