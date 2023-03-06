import 'package:catalogo_de_alimentos/dummy_data/meal_list.dart';
import 'package:catalogo_de_alimentos/models/meal.dart';
import 'package:catalogo_de_alimentos/pages/food_by_category_page/components/custom_card_category.dart';
import 'package:flutter/material.dart';

import '../../models/category.dart';
import '../../models/settings.dart';

class CategoryPage extends StatelessWidget {
  const CategoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    Category selectedCategory =
        ModalRoute.of(context)!.settings.arguments as Category;

    List<Meal> mealByCategory = mealList.where((element) {
      bool filterFunction(bool elementValue, bool switchValue) {
        if (switchValue) {
          return elementValue == switchValue;
        } else {
          return true;
        }
      }

      return element.categories.contains(selectedCategory.id) &&
          (filterFunction(
              element.isGlutenFree, Settings.settingsValues.isGlutenFree)) &&
          (filterFunction(
              element.isLactoseFree, Settings.settingsValues.isLactoseFree)) &&
          (filterFunction(
              element.isVegetarian, Settings.settingsValues.isVegetarian)) &&
          (filterFunction(element.isVegan, Settings.settingsValues.isVegan));
    }).toList();

    return Scaffold(
      appBar: AppBar(title: Text(selectedCategory.title)),
      body: Center(
        child: ListView.builder(
          itemCount: mealByCategory.length,
          itemBuilder: (__, index) {
            return CustomCardDetails(
                mealByCategory: mealByCategory, index: index);
          },
        ),
      ),
    );
  }
}
