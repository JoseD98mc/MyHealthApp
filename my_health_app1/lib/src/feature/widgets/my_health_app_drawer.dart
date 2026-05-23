import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

// Widget reutilizable para el Drawer de navegación lateral.
// Al ser StatelessWidget, no necesita manejar estado propio.
class MyHealthAppDrawer extends StatelessWidget {
  const MyHealthAppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        // padding: EdgeInsets.zero elimina el espacio extra superior
        // que ListView agrega por defecto, para que el DrawerHeader ocupe todo el ancho
        padding: EdgeInsets.zero,
        children: <Widget>[

          // DrawerHeader es el encabezado visual del Drawer
          // Se personaliza con color de fondo e ícono representativo
          DrawerHeader(
            decoration: const BoxDecoration(
              color: Color(0xFF1976D2), // Mismo azul que el AppBar para consistencia
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end, // Contenido alineado abajo
              children: const [
                // Ícono de corazón como identidad visual de la app de salud
                Icon(Icons.favorite, color: Colors.white, size: 36),
                SizedBox(height: 8),
                Text(
                  'My Health App',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),

          // Se usa un método privado _buildTile para evitar repetición de código (DRY)
          // Cada opción del menú recibe su icono, etiqueta y ruta
          _buildTile(context, icon: Icons.home_outlined, label: 'Home', route: '/'),
          _buildTile(context, icon: Icons.monitor_weight_outlined, label: 'BMI Calculator', route: '/bmi'),
          _buildTile(context, icon: Icons.cake_outlined, label: 'Age Calculator', route: '/age'),
          _buildTile(context, icon: Icons.stars_outlined, label: 'Zodiac Calculator', route: '/zodiac'),
        ],
      ),
    );
  }

  // Método privado reutilizable para construir cada opción del menú.
  // Recibe el contexto, icono, etiqueta y ruta como parámetros nombrados.
  Widget _buildTile(BuildContext context,
      {required IconData icon, required String label, required String route}) {
    return ListTile(
      // Icono a la izquierda con el color azul de la paleta
      leading: Icon(icon, color: const Color(0xFF1976D2)),
      title: Text(label),
      onTap: () {
        // Navigator.pop cierra el Drawer antes de navegar
        Navigator.pop(context);
        // context.go() de GoRouter reemplaza la pantalla actual en el stack
        // a diferencia de push() que apila sobre la anterior
        context.go(route);
      },
    );
  }
}