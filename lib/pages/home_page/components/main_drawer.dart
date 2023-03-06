import 'package:catalogo_de_alimentos/app_routes/named_routes.dart';
import 'package:flutter/material.dart';

class HomePageDrawer extends StatelessWidget {
  const HomePageDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          ClipRRect(
            borderRadius:
                const BorderRadius.only(topRight: Radius.circular(10)),
            child: Container(
              padding: const EdgeInsets.only(bottom: 40, left: 10),
              alignment: Alignment.bottomLeft,
              color: Theme.of(context).primaryColor,
              height: 150,
              width: double.infinity,
              child: const Text(
                'Catálogo de Receitas',
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
          ),
          const SizedBox(height: 20),
          Row(
            children: [
              const SizedBox(width: 20),
              const Icon(Icons.restaurant_menu),
              const SizedBox(width: 10),
              TextButton(
                onPressed: () {
                  Navigator.pushReplacementNamed(context, NamedRoutes.homePage);
                },
                child: const Text(
                  'Refeições',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
              ),
            ],
          ),
          const SizedBox(height: 30),
          Row(
            children: [
              const SizedBox(width: 20),
              const Icon(Icons.settings),
              const SizedBox(width: 10),
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                  Navigator.pushNamed(context, NamedRoutes.settingsPage);
                },
                child: const Text(
                  'Configurações',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
