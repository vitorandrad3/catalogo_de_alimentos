import 'package:catalogo_de_alimentos/pages/favorites_page/favorites_page.dart';
import 'package:catalogo_de_alimentos/pages/home_page/components/categories.dart';
import 'package:catalogo_de_alimentos/pages/home_page/components/main_drawer.dart';
import 'package:flutter/material.dart';

class TabScreen extends StatefulWidget {
  const TabScreen({super.key});

  @override
  State<TabScreen> createState() => _TabScreenState();
}

class _TabScreenState extends State<TabScreen> {
  int page = 0;
  PageController nav = PageController();

  @override
  void initState() {
    super.initState();
    nav = PageController(initialPage: page);
  }

  setCurrentPage(currentpage) {
    setState(() {
      page = currentpage;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const HomePageDrawer(),
      appBar: AppBar(
        title: const Text('Catálogo'),
      ),
      body: PageView(
        onPageChanged: setCurrentPage,
        controller: nav,
        children: const [
          CategoriesPage(),
          FavoritesPage(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (page) {
          nav.animateToPage(page,
              duration: const Duration(milliseconds: 350), curve: Curves.ease);
        },
        currentIndex: page,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.restaurant_menu), label: 'Categorias'),
          BottomNavigationBarItem(icon: Icon(Icons.star), label: 'Favoritas'),
        ],
      ),
    );
  }
}
