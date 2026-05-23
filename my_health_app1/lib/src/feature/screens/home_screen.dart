import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:my_health_app/src/feature/widgets/my_health_app_drawer.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyHealthAppDrawer(),
      appBar: AppBar(
        title: const Text('My Health App'),
        backgroundColor: const Color(0xFF1976D2),
        foregroundColor: Colors.white,
        elevation: 2,
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xFFE3F2FD), Colors.white],
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                'What would you like to calculate?',
                style: TextStyle(
                  fontSize: 16,
                  color: Color(0xFF546E7A),
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 30),
              _buildButton(
                context,
                label: 'Calculate Age',
                icon: Icons.cake_outlined,
                color: const Color(0xFF1976D2),
                route: '/age',
              ),
              const SizedBox(height: 16),
              _buildButton(
                context,
                label: 'Calculate BMI',
                icon: Icons.monitor_weight_outlined,
                color: const Color(0xFF00897B),
                route: '/bmi',
              ),
              const SizedBox(height: 16),
              _buildButton(
                context,
                label: 'Determine Zodiac Sign',
                icon: Icons.stars_outlined,
                color: const Color(0xFF7B1FA2),
                route: '/zodiac',
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildButton(BuildContext context,
      {required String label,
      required IconData icon,
      required Color color,
      required String route}) {
    return ElevatedButton.icon(
      onPressed: () => context.push(route),
      icon: Icon(icon),
      label: Text(label),
      style: ElevatedButton.styleFrom(
        backgroundColor: color,
        foregroundColor: Colors.white,
        padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
        minimumSize: const Size(250, 50),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        elevation: 2,
      ),
    );
  }
}