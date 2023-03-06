import 'package:flutter/material.dart';

import '../models/meal.dart';

List<Meal> favoritesMeal = [];

class FavoritesController extends ChangeNotifier {
  static FavoritesController favoritesController = FavoritesController();

  void removeItem(selectedMeal) {
    favoritesMeal.remove(selectedMeal);
    notifyListeners();
  }

  void addItem(selectedMeal) {
    favoritesMeal.add(selectedMeal);
    notifyListeners();
  }
}
