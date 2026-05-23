import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:my_health_app/src/feature/widgets/my_health_app_drawer.dart';

// HomeScreen es un StatelessWidget porque no necesita manejar estado interno.
// Toda la navegación se delega a GoRouter.
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Se incluye el Drawer lateral reutilizable desde un widget separado
      drawer: MyHealthAppDrawer(),

      // AppBar con color personalizado usando valor hexadecimal
      appBar: AppBar(
        title: const Text('My Health App'),
        backgroundColor: const Color(0xFF1976D2), // Azul Material Design 700
        foregroundColor: Colors.white,
        elevation: 2, // Sombra sutil bajo el AppBar
      ),

      // Container con gradiente para dar profundidad visual sin ser invasivo
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            // Degradado de azul muy claro a blanco
            colors: [Color(0xFFE3F2FD), Colors.white],
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              // Texto descriptivo para guiar al usuario
              const Text(
                'What would you like to calculate?',
                style: TextStyle(
                  fontSize: 16,
                  color: Color(0xFF546E7A), // Gris azulado sutil
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 30),

              // Se usa un método privado _buildButton para evitar repetición de código (DRY)
              // Cada botón recibe su propio color, icono y ruta de navegación
              _buildButton(
                context,
                label: 'Calculate Age',
                icon: Icons.cake_outlined,
                color: const Color(0xFF1976D2), // Azul
                route: '/age',
              ),
              const SizedBox(height: 16),
              _buildButton(
                context,
                label: 'Calculate BMI',
                icon: Icons.monitor_weight_outlined,
                color: const Color(0xFF00897B), // Verde teal
                route: '/bmi',
              ),
              const SizedBox(height: 16),
              _buildButton(
                context,
                label: 'Determine Zodiac Sign',
                icon: Icons.stars_outlined,
                color: const Color(0xFF7B1FA2), // Morado
                route: '/zodiac',
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Método privado reutilizable para construir botones con estilo consistente.
  // Recibe el contexto, etiqueta, icono, color y ruta como parámetros nombrados.
  Widget _buildButton(BuildContext context,
      {required String label,
      required IconData icon,
      required Color color,
      required String route}) {
    return ElevatedButton.icon(
      // context.push() de GoRouter agrega la pantalla al stack de navegación
      // permitiendo volver atrás con el botón de retroceso
      onPressed: () => context.push(route),
      icon: Icon(icon),
      label: Text(label),
      style: ElevatedButton.styleFrom(
        backgroundColor: color,
        foregroundColor: Colors.white,
        padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
        minimumSize: const Size(250, 50), // Tamaño mínimo para mejor usabilidad
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12), // Bordes redondeados
        ),
        elevation: 2, // Sombra sutil en los botones
      ),
    );
  }
}