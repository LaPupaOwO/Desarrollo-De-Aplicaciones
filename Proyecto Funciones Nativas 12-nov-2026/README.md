<div align="center">

# 📍 Funciones Nativas en Flutter

### Cámara + ubicación GPS en una sola aplicación

![Banner del proyecto](https://capsule-render.vercel.app/api?type=rounded&color=0:4F46E5,50:7C3AED,100:06B6D4&height=180&section=header&text=Registro%20de%20Evidencia&fontSize=34&fontColor=ffffff&animation=fadeIn)

![Flutter](https://img.shields.io/badge/Flutter-aplicaci%C3%B3n-02569B?style=for-the-badge&logo=flutter&logoColor=white)
![GPS](https://img.shields.io/badge/Funci%C3%B3n-GPS-22C55E?style=for-the-badge&logo=googlemaps&logoColor=white)
![Cámara](https://img.shields.io/badge/Funci%C3%B3n-C%C3%A1mara-8B5CF6?style=for-the-badge&logo= android&logoColor=white)

</div>

## 💡 ¿De qué trata?

Este proyecto escolar explora el uso de **funciones nativas del dispositivo** desde Flutter. La aplicación solicita la ubicación actual y abre la cámara para tomar una fotografía; después muestra la imagen junto con sus coordenadas y la fecha y hora del registro.

## ✨ Funcionalidades

- 📍 Consulta la ubicación GPS actual con precisión alta.
- 🔐 Comprueba y solicita permisos de ubicación cuando hace falta.
- 📸 Abre la cámara para capturar una fotografía.
- 🧾 Presenta la foto, latitud, longitud y hora como evidencia.
- ⏳ Muestra el estado del proceso y maneja errores o cancelaciones.

## 🧰 Tecnologías

- **Flutter** y **Dart**
- [`geolocator`](https://pub.dev/packages/geolocator) para ubicación y permisos GPS
- [`image_picker`](https://pub.dev/packages/image_picker) para capturar imágenes con la cámara

## 📂 Contenido

- [`flutter_application_6/`](flutter_application_6/) — código fuente de la aplicación.
- `lib/screens/` — pantalla de registro de evidencia.
- `lib/services/` — servicios para cámara y ubicación.

## ▶️ Cómo ejecutar

Desde la carpeta `flutter_application_6`, con Flutter instalado y un dispositivo o emulador conectado:

```bash
flutter pub get
flutter run
```

La aplicación necesita permisos de cámara y ubicación. Si los permisos se rechazan o el GPS está desactivado, no podrá completar el registro.

## 🖼️ Vista del proyecto

La pantalla principal permite iniciar el registro y, al terminar, muestra la fotografía tomada junto con la información de ubicación y hora. Las capturas reales se pueden añadir aquí cuando estén disponibles.

---

<div align="center">

💜 Proyecto escolar · Desarrollo de Aplicaciones

</div>
