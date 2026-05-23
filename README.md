# My Health App 🏥

Una aplicación Flutter que ayuda a los usuarios a calcular su edad, IMC y determinar su signo zodiacal.

## Características

- 🎂 **Calculadora de Edad** - Calcula tu edad según tu fecha de nacimiento
- ⚖️ **Calculadora de IMC** - Calcula tu Índice de Masa Corporal
- ⭐ **Signo Zodiacal** - Determina tu signo zodiacal según tu fecha de nacimiento

## Requisitos

Antes de ejecutar este proyecto, asegúrate de tener instalado:

- [Flutter SDK](https://flutter.dev/docs/get-started/install) (>= 3.2.1)
- [Dart SDK](https://dart.dev/get-dart) (>= 3.2.1)
- [Google Chrome](https://www.google.com/chrome/) (para ejecución web)
- [Git](https://git-scm.com/)

## Primeros Pasos

### 1. Clonar el repositorio


git clone https://github.com/JoseD98mc/MyHealthApp


### 2. Instalar dependencias


flutter pub get


### 3. Ejecutar la aplicación

**En Chrome (Web):**

flutter run -d chrome


**En otros dispositivos:**

# Listar dispositivos disponibles
flutter devices

# Ejecutar en un dispositivo específico
flutter run -d <device_id>


## Navegación

La aplicación usa **GoRouter** para la navegación con las siguientes rutas:

| Ruta | Pantalla |
|------|----------|
| `/` | Pantalla Principal |
| `/age` | Calculadora de Edad |
| `/bmi` | Calculadora de IMC |
| `/zodiac` | Calculadora de Signo Zodiacal |

## Cómo Usar

1. Abre la aplicación en Chrome
2. Usa el **menú lateral** (ícono de hamburguesa) o los botones en la pantalla principal
3. Selecciona la calculadora que deseas usar
4. Sigue las instrucciones en pantalla

## Autor

- **Jose David Muñoz Cadavid** - ITM - Desarrollo de Apps para Dispositivos Móviles (2026-1)
