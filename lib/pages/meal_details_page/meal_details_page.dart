import 'package:catalogo_de_alimentos/dummy_data/meal_list.dart';
import 'package:catalogo_de_alimentos/pages/meal_details_page/components/custom_detail_card.dart';
import 'package:flutter/material.dart';

import '../../controller/favorites_controller.dart';
import '../../models/meal.dart';

class DetailsPage extends StatefulWidget {
  const DetailsPage({super.key});

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    Meal selectedMeal = ModalRoute.of(context)?.settings.arguments as Meal;

    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.yellow,
        child: favoritesMeal.contains(selectedMeal)
            ? const Icon(Icons.star)
            : const Icon(Icons.star_border_outlined),
        onPressed: () {
          setState(
            () {
              if (favoritesMeal.contains(selectedMeal)) {
                FavoritesController.favoritesController
                    .removeItem(selectedMeal);
                ScaffoldMessenger.of(context).removeCurrentSnackBar();
                ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                    content: Text('Receita removida das favoritas')));
              } else {
                FavoritesController.favoritesController.addItem(selectedMeal);
                ScaffoldMessenger.of(context).removeCurrentSnackBar();
                ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                    content: Text('Receita adicionada às favoritas')));
              }
            },
          );
        },
      ),
      appBar: AppBar(
        title: Text(selectedMeal.title),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              const SizedBox(height: 20),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.3,
                width: MediaQuery.of(context).size.width * 0.95,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.network(
                    selectedMeal.imageUrl,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(height: 22),
              const Text(
                'Ingredientes',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              const SizedBox(height: 10),
              CustomDetailCard(mealInformation: selectedMeal.ingredients),
              const SizedBox(height: 22),
              const Text(
                'Passos',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              const SizedBox(height: 10),
              CustomDetailCard2(mealInformation: selectedMeal.steps),
              const SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}
