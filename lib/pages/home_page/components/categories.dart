import 'package:catalogo_de_alimentos/dummy_data/category_list.dart';
import 'package:flutter/material.dart';

import '../../../app_routes/named_routes.dart';

class CategoriesPage extends StatefulWidget {
  const CategoriesPage({super.key});

  @override
  State<CategoriesPage> createState() => _CategoriesPageState();
}

class _CategoriesPageState extends State<CategoriesPage> {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: const EdgeInsets.all(10),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        childAspectRatio: 1.28,
        crossAxisSpacing: 15,
        mainAxisSpacing: 15,
        crossAxisCount: 2,
      ),
      itemCount: categoryList.length,
      itemBuilder: (BuildContext context, int index) {
        return InkWell(
          borderRadius: BorderRadius.circular(20),
          onTap: () {
            Navigator.pushNamed(context, NamedRoutes.categoryPage,
                arguments: categoryList[index]);
          },
          child: Container(
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    categoryList[index].color.withOpacity(0.5),
                    categoryList[index].color,
                    categoryList[index].color,
                  ],
                ),
              ),
              child: Text(
                categoryList[index].title,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              )),
        );
      },
    );
  }
}
