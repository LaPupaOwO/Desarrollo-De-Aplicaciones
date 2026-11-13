import 'dart:io';

import 'package:flutter/material.dart';

import '../services/camera_service.dart';

class CameraView extends StatefulWidget {
  const CameraView({super.key});

  @override
  State<CameraView> createState() => _CameraViewState();
}

class _CameraViewState extends State<CameraView> {
  final CameraService _cameraService = CameraService();
  String? _imagePath;

  Future<void> _capturePhoto() async {
    String? path = await _cameraService.takePicture();
    if (path != null) {
      setState(() {
        _imagePath = path;
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
              'Módulo de Cámara',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            _imagePath != null
                ? Image.file(
                    File(_imagePath!),
                    height: 150,
                    width: 150,
                    fit: BoxFit.cover,
                  )
                : Container(
                    height: 150,
                    width: 150,
                    color: Colors.grey[200],
                    child: const Icon(
                      Icons.camera_alt,
                      size: 50,
                      color: Colors.grey,
                    ),
                  ),
            const SizedBox(height: 15),
            ElevatedButton.icon(
              onPressed: _capturePhoto,
              icon: const Icon(Icons.camera),
              label: const Text('Tomar Fotografía'),
            ),
          ],
        ),
      ),
    );
  }
}
