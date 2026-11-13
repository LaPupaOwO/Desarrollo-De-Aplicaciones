import 'package:flutter/material.dart';

import '../services/location_service.dart';

class LocationView extends StatefulWidget {
  const LocationView({super.key});

  @override
  State<LocationView> createState() => _LocationViewState();
}

class _LocationViewState extends State<LocationView> {
  // Instanciamos el servicio que actualizamos
  final LocationService _locationService = LocationService();
  String _locationMessage = 'Presiona el botón para obtener tu ubicación';
  bool _isLoading = false;

  Future<void> _fetchLocation() async {
    setState(() {
      _isLoading = true;
      _locationMessage = 'Obteniendo ubicación...';
    });

    try {
      final position = await _locationService.obtenerUbicacionActual();

      setState(() {
        _locationMessage =
            'Latitud: ${position.latitude}\nLongitud: ${position.longitude}';
      });
    } catch (e) {
      setState(() {
        _locationMessage = 'Error: $e';
      });
    } finally {
      setState(() {
        _isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      margin: const EdgeInsets.all(8.0),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const Text(
              'Módulo de GPS',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Text(_locationMessage, textAlign: TextAlign.center),
            const SizedBox(height: 15),
            _isLoading
                ? const CircularProgressIndicator()
                : ElevatedButton.icon(
                    onPressed: _fetchLocation,
                    icon: const Icon(Icons.location_on),
                    label: const Text('Obtener Ubicación'),
                  ),
          ],
        ),
      ),
    );
  }
}
