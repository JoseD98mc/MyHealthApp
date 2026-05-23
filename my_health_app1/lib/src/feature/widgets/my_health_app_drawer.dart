import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class MyHealthAppDrawer extends StatelessWidget {
  const MyHealthAppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: const BoxDecoration(
              color: Color(0xFF1976D2),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: const [
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
          _buildTile(context, icon: Icons.home_outlined, label: 'Home', route: '/'),
          _buildTile(context, icon: Icons.monitor_weight_outlined, label: 'BMI Calculator', route: '/bmi'),
          _buildTile(context, icon: Icons.cake_outlined, label: 'Age Calculator', route: '/age'),
          _buildTile(context, icon: Icons.stars_outlined, label: 'Zodiac Calculator', route: '/zodiac'),
        ],
      ),
    );
  }

  Widget _buildTile(BuildContext context,
      {required IconData icon, required String label, required String route}) {
    return ListTile(
      leading: Icon(icon, color: const Color(0xFF1976D2)),
      title: Text(label),
      onTap: () {
        Navigator.pop(context);
        context.go(route);
      },
    );
  }
}