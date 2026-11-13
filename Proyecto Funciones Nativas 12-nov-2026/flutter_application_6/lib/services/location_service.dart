import 'package:geolocator/geolocator.dart';

// Alain Josué Reyes Domínguez

class LocationService {
  Future<Position> obtenerUbicacionActual() async {
    // 1. Validar si el GPS está encendido
    bool serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      throw 'Los servicios de ubicación están desactivados.';
    }

    // 2. Validar permisos de ubicación
    LocationPermission permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        throw 'Los permisos de ubicación fueron denegados.';
      }
    }

    if (permission == LocationPermission.deniedForever) {
      throw 'Los permisos están denegados permanentemente.';
    }

    // 3. Obtener la posición actual
    Position position = await Geolocator.getCurrentPosition(
      locationSettings: const LocationSettings(accuracy: LocationAccuracy.high),
    );

    return position;
  }
}
// ^--- VALIDA PERMISOS Y OBTIENE LA UBICACIÓN GPS ACTUAL.
