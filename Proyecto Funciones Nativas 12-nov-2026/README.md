<div align="center">

# 📍 Funciones Nativas en Flutter

### Cámara + ubicación GPS en una sola aplicación

![Banner del proyecto: cámara y GPS](https://capsule-render.vercel.app/api?type=waving&color=0:4F46E5,50:7C3AED,100:06B6D4&height=180&section=header&text=Registro%20de%20Evidencia&fontSize=34&fontColor=ffffff&animation=fadeIn&fontAlignY=38)

[![Abrir código de la aplicación](https://img.shields.io/badge/📱_Código-Flutter-02569B?style=for-the-badge&logo=flutter&logoColor=white)](flutter_application_6/)
[![Ver repositorio](https://img.shields.io/badge/Repositorio-GitHub-181717?style=for-the-badge&logo=github&logoColor=white)](https://github.com/LaPupaOwO/Desarrollo-De-Aplicaciones)
[![GPS](https://img.shields.io/badge/Función-GPS-22C55E?style=for-the-badge&logo=googlemaps&logoColor=white)](https://pub.dev/packages/geolocator)
[![Cámara](https://img.shields.io/badge/Función-Cámara-8B5CF6?style=for-the-badge&logo=flutter&logoColor=white)](https://pub.dev/packages/image_picker)

</div>

## 💡 ¿De qué trata?

Este proyecto escolar explora el uso de **funciones nativas del dispositivo** desde Flutter. La aplicación obtiene la ubicación actual y permite tomar una fotografía; después muestra ambos datos junto con la fecha y hora como evidencia.

## ✨ Funcionalidades

- 📍 Consulta la ubicación GPS actual.
- 🔐 Comprueba y solicita permisos de ubicación cuando hace falta.
- 📸 Abre la cámara para capturar una fotografía.
- 🧾 Presenta la foto, latitud, longitud y hora como evidencia.
- ⏳ Muestra el estado del proceso y maneja errores o cancelaciones.

## 🧰 Tecnologías

- **Flutter** y **Dart**
- [`geolocator`](https://pub.dev/packages/geolocator) para ubicación y permisos GPS
- [`image_picker`](https://pub.dev/packages/image_picker) para capturar imágenes con la cámara

## 📂 Organización del proyecto

La carpeta `flutter_application_6/` contiene la aplicación Flutter completa, no solo las carpetas principales del código:

| Carpeta o archivo | Para qué sirve |
| --- | --- |
| `lib/` | Código Dart de la aplicación. Incluye `main.dart` y las carpetas `screens/`, `services/` y `widgets/`. |
| `lib/screens/` | Pantallas e interacción principal para registrar la evidencia. |
| `lib/services/` | Lógica de acceso a la cámara y consulta de ubicación. |
| `lib/widgets/` | Componentes visuales reutilizables. |
| `test/` | Pruebas del proyecto. |
| `android/` y `ios/` | Configuración y archivos específicos de las plataformas móviles. |
| `web/`, `linux/`, `macos/` y `windows/` | Estructura y archivos de plataforma generados por Flutter para esas plataformas. |
| `pubspec.yaml` y `pubspec.lock` | Configuración del paquete y dependencias de Dart/Flutter. |
| `analysis_options.yaml` | Reglas de análisis estático del código Dart. |
| `README.md`, `.gitignore` y `.metadata` | Documentación, archivos ignorados por Git y metadatos de Flutter. |

## ▶️ Cómo ejecutar

Desde la carpeta `flutter_application_6`, con Flutter instalado y un dispositivo o emulador compatible:

```bash
flutter pub get
flutter run
```

La aplicación necesita permisos de cámara y ubicación. Si los permisos se rechazan o el GPS está desactivado, no podrá completar el registro.

## 🖼️ Vista del proyecto

La pantalla principal permite iniciar el registro y, al terminar, muestra la fotografía tomada junto con la información de ubicación y hora. Aquí se podrán añadir capturas reales de la aplicación cuando estén disponibles.

---

<div align="center">

💜 Proyecto escolar · Desarrollo de Aplicaciones

</div>
