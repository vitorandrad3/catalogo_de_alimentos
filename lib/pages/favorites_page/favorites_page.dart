import 'package:catalogo_de_alimentos/pages/food_by_category_page/components/custom_card_category.dart';
import 'package:flutter/material.dart';
import '../../controller/favorites_controller.dart';

class FavoritesPage extends StatefulWidget {
  const FavoritesPage({super.key});

  @override
  State<FavoritesPage> createState() => _FavoritesPageState();
}

class _FavoritesPageState extends State<FavoritesPage> {
  @override
  void initState() {
    super.initState();
    FavoritesController.favoritesController.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return favoritesMeal.isEmpty
        ? const Center(
            child: Text(
            'Sem receitas favoritas no momento...',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ))
        : ListView.builder(
            itemCount: favoritesMeal.length,
            itemBuilder: (BuildContext context, int index) {
              return CustomCardDetails(
                  mealByCategory: favoritesMeal, index: index);
            },
          );
  }
}
