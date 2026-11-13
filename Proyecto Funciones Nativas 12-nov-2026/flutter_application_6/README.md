<div align="center">

# 📱 Registro de Evidencia

### Proyecto Flutter de cámara y ubicación GPS

![Banner Flutter](https://capsule-render.vercel.app/api?type=soft&color=0:2563EB,50:7C3AED,100:06B6D4&height=170&section=header&text=C%C3%A1mara%20%2B%20GPS&fontSize=36&fontColor=ffffff&animation=fadeIn)

![Flutter](https://img.shields.io/badge/Hecho%20con-Flutter-02569B?style=for-the-badge&logo=flutter&logoColor=white)
![Dart](https://img.shields.io/badge/Lenguaje-Dart-0175C2?style=for-the-badge&logo=dart&logoColor=white)

</div>

Esta aplicación de práctica registra una evidencia con una **fotografía tomada desde la cámara**, la **ubicación GPS** del dispositivo y la fecha y hora. Al finalizar, muestra todos esos datos en pantalla.

## 🌟 Características

- Obtiene la posición actual y gestiona los permisos de ubicación.
- Permite tomar una fotografía con la cámara del dispositivo.
- Muestra la foto, latitud, longitud y hora del registro.
- Informa el progreso, la cancelación de la captura y posibles errores.

## 🛠️ Paquetes principales

- [`geolocator`](https://pub.dev/packages/geolocator) — servicios de ubicación.
- [`image_picker`](https://pub.dev/packages/image_picker) — captura de imágenes desde la cámara.

## 🚀 Ejecutar la aplicación

Requiere Flutter instalado y un dispositivo o emulador compatible:

```bash
flutter pub get
flutter run
```

Concede los permisos de cámara y ubicación cuando la aplicación los solicite. La ubicación requiere que el servicio GPS del dispositivo esté activado.

## 🧭 Organización del código

- `lib/main.dart` — inicialización y tema de la aplicación.
- `lib/screens/home_screen.dart` — interfaz y flujo para registrar evidencia.
- `lib/services/camera_service.dart` — acceso a la cámara.
- `lib/services/location_service.dart` — validación de permisos y consulta GPS.

---

<div align="center">💜 Práctica escolar de funciones nativas con Flutter</div>
