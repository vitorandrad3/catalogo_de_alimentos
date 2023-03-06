import 'package:catalogo_de_alimentos/controller/theme_mode_controller.dart';
import 'package:catalogo_de_alimentos/food_catalog_app.dart';
import 'package:catalogo_de_alimentos/models/settings.dart';
import 'package:catalogo_de_alimentos/pages/home_page/components/main_drawer.dart';
import 'package:catalogo_de_alimentos/settings/components/custom_switch.dart';
import 'package:flutter/material.dart';

class ConfigurationPage extends StatefulWidget {
  const ConfigurationPage({super.key});

  @override
  State<ConfigurationPage> createState() => _ConfigurationPageState();
}

class _ConfigurationPageState extends State<ConfigurationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Configurações'),
      ),
      body: Column(
        children: [
          const SizedBox(height: 20),
          CustomSwitch(
              onPressed: (changeValue) {
                setState(() {
                  Settings.settingsValues.isGlutenFree = changeValue;
                });
              },
              title: 'Sem Glúten',
              subTitle: 'Só exibe refeições sem glúten',
              value: Settings.settingsValues.isGlutenFree),
          CustomSwitch(
              onPressed: (changeValue) {
                setState(() {
                  Settings.settingsValues.isLactoseFree = changeValue;
                });
              },
              title: 'Sem Lactose',
              subTitle: 'Só exibe refeições sem Lactose',
              value: Settings.settingsValues.isLactoseFree),
          CustomSwitch(
              onPressed: (changeValue) {
                setState(() {
                  Settings.settingsValues.isVegetarian = changeValue;
                });
              },
              title: 'Vegetariano',
              subTitle: 'Só exibe refeições Vegetarianas',
              value: Settings.settingsValues.isVegetarian),
          CustomSwitch(
              onPressed: (changeValue) {
                setState(() {
                  Settings.settingsValues.isVegan = changeValue;
                });
              },
              title: 'Vegano',
              subTitle: 'Só exibe refeições Veganas',
              value: Settings.settingsValues.isVegan),
          CustomSwitch(
              onPressed: (changeValue) {
                setState(() {
                  SwitchCurrentTheme.switchCurrentTheme
                      .changeTheme(changeValue);
                });
              },
              title: 'Modo Noturno',
              subTitle: 'Exibe o esquema de cores noturnas',
              value: Settings.settingsValues.isNight),
        ],
      ),
    );
  }
}
