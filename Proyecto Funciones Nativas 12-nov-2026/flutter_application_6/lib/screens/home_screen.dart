import 'dart:io';

import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

import '../services/camera_service.dart';
import '../services/location_service.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final CameraService _cameraService = CameraService();
  final LocationService _locationService = LocationService();

  String? _imagePath;
  Position? _position;
  DateTime? _capturedAt;
  bool _isRegistering = false;
  String? _statusMessage;

  Future<void> _registerEvidence() async {
    setState(() {
      _isRegistering = true;
      _statusMessage = 'Obteniendo ubicación...';
    });

    try {
      // <-- AQUÍ
      final position = await _locationService.obtenerUbicacionActual();
      if (!mounted) return;

      setState(() {
        _statusMessage = 'Abriendo cámara...';
      });

      // <-- AQUÍ
      final imagePath = await _cameraService.takePicture();
      if (!mounted) return;

      if (imagePath == null) {
        setState(() {
          _statusMessage = 'Registro cancelado.';
        });
        return;
      }

      setState(() {
        _imagePath = imagePath;
        _position = position;
        _capturedAt = DateTime.now();
        _statusMessage = null;
      });
    } catch (error) {
      if (!mounted) return;
      setState(() {
        _statusMessage = 'No se pudo registrar la evidencia: $error';
      });
    } finally {
      if (mounted) {
        setState(() {
          _isRegistering = false;
        });
      }
    }
  }

  String _formatDateTime(DateTime dateTime) {
    String twoDigits(int value) => value.toString().padLeft(2, '0');
    String threeDigits(int value) => value.toString().padLeft(3, '0');
    return '${twoDigits(dateTime.day)}/${twoDigits(dateTime.month)}/${dateTime.year} '
        '${twoDigits(dateTime.hour)}:${twoDigits(dateTime.minute)}:${twoDigits(dateTime.second)}.'
        '${threeDigits(dateTime.millisecond)}';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Registro de Evidencia'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Center(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 600),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                ElevatedButton.icon(
                  onPressed: _isRegistering ? null : _registerEvidence,
                  icon: _isRegistering
                      ? const SizedBox(
                          width: 20,
                          height: 20,
                          child: CircularProgressIndicator(strokeWidth: 2),
                        )
                      : const Icon(Icons.fact_check),
                  label: Text(
                    _isRegistering ? 'Registrando...' : 'Registrar Evidencia',
                  ),
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(vertical: 16),
                  ),
                ),
                if (_statusMessage != null) ...[
                  const SizedBox(height: 16),
                  Text(_statusMessage!, textAlign: TextAlign.center),
                ],
                if (_imagePath != null &&
                    _position != null &&
                    _capturedAt != null) ...[
                  const SizedBox(height: 24),
                  Card(
                    clipBehavior: Clip.antiAlias,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Image.file(
                          File(_imagePath!),
                          height: 300,
                          fit: BoxFit.cover,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(16),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Latitud: ${_position!.latitude}',
                                key: const Key('evidence-latitude'),
                              ),
                              Text(
                                'Longitud: ${_position!.longitude}',
                                key: const Key('evidence-longitude'),
                              ),
                              Text(
                                'Hora: ${_formatDateTime(_capturedAt!)}',
                                key: const Key('evidence-time'),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ],
            ),
          ),
        ),
      ),
    );
  }
}
