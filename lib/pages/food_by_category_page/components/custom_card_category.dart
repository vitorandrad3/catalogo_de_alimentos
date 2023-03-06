import 'package:catalogo_de_alimentos/app_routes/named_routes.dart';
import 'package:flutter/material.dart';

import '../../../models/meal.dart';

class CustomCardDetails extends StatelessWidget {
  const CustomCardDetails(
      {super.key, required this.mealByCategory, required this.index});

  final List<Meal> mealByCategory;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Card(
      surfaceTintColor: Colors.white,
      color: Colors.white,
      elevation: 10,
      margin: const EdgeInsets.all(15),
      child: InkWell(
        onTap: () {
          Navigator.pushNamed(context, NamedRoutes.detailsPage,
              arguments: mealByCategory[index]);
        },
        child: Column(
          children: [
            Stack(
              children: [
                Image.network(
                  mealByCategory[index].imageUrl,
                  height: 250,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
                Positioned(
                  bottom: 22,
                  child: Container(
                    color: Colors.black54,
                    child: Text(
                      mealByCategory[index].title,
                      style: const TextStyle(
                          overflow: TextOverflow.fade,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                children: [
                  const Icon(Icons.schedule),
                  Text('  ${mealByCategory[index].duration}min  '),
                  const Spacer(),
                  const Icon(Icons.work),
                  Text('  ${mealByCategory[index].getComplexity()}'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
