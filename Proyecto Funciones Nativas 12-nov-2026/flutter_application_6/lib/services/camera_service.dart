import 'package:image_picker/image_picker.dart';

// Alain Josué Reyes Domínguez
class CameraService {
  final ImagePicker _picker = ImagePicker();

  Future<String?> takePicture() async {
    final XFile? photo = await _picker.pickImage(
      source: ImageSource.camera,
      imageQuality: 80,
    );
    return photo?.path; // Retorna la ruta local del archivo de imagen
  }
}
// ^--- ABRE LA CÁMARA Y DEVUELVE LA RUTA DE LA FOTO TOMADA.
