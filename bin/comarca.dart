import 'package:args/args.dart';

const String version = '0.0.1';

//PARA LA CLASE COMARCA


class Comarca {
  String nombre;
  String capital;
  String poblacion;
  String img;
  String desc;
  double latitud;
  double longitud;

  Comarca({
    required this.nombre,
    required this.capital,
    required this.poblacion,
    required this.img,
    required this.desc,
    required this.latitud,
    required this.longitud,
  });

  @override
  String toString() {
    return 'Comarca: $nombre, Capital: $capital, Población: $poblacion, Imagen: $img, Descripción: $desc, Latitud: $latitud, Longitud: $longitud';
  }
}















