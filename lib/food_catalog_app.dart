import 'package:catalogo_de_alimentos/app_routes/named_routes.dart';
import 'package:catalogo_de_alimentos/controller/theme_mode_controller.dart';
import 'package:catalogo_de_alimentos/models/settings.dart';
import 'package:catalogo_de_alimentos/settings/settings_page.dart';
import 'package:catalogo_de_alimentos/pages/food_by_category_page/category_food_page.dart';
import 'package:catalogo_de_alimentos/pages/home_page/home_page.dart';
import 'package:catalogo_de_alimentos/pages/meal_details_page/meal_details_page.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';

class FoodApp extends StatefulWidget {
  const FoodApp({super.key});

  @override
  State<FoodApp> createState() => _FoodAppState();
}

class _FoodAppState extends State<FoodApp> {
  @override
  void initState() {
    super.initState();
    SwitchCurrentTheme.switchCurrentTheme.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode:
          Settings.settingsValues.isNight ? ThemeMode.dark : ThemeMode.light,
      theme: FlexThemeData.light(
        colors: const FlexSchemeColor(
          primary: Color(0xffc91300),
          primaryContainer: Color(0xffffffff),
          secondary: Color(0xffac3306),
          secondaryContainer: Color.fromARGB(255, 255, 255, 255),
          tertiary: Color(0xff006875),
          tertiaryContainer: Color(0xff95f0ff),
          appBarColor: Color(0xffffdbcf),
          error: Color(0xffb00020),
        ),
        surfaceMode: FlexSurfaceMode.levelSurfacesLowScaffold,
        blendLevel: 9,
        subThemesData: const FlexSubThemesData(
          fabUseShape: true,
          fabRadius: 40,
          blendOnLevel: 10,
          blendOnColors: false,
          inputDecoratorRadius: 23.0,
          inputDecoratorFocusedBorderWidth: 2.5,
          appBarBackgroundSchemeColor: SchemeColor.primary,
          bottomNavigationBarSelectedLabelSchemeColor: SchemeColor.onPrimary,
          bottomNavigationBarUnselectedLabelSchemeColor: SchemeColor.onPrimary,
          bottomNavigationBarSelectedIconSchemeColor: SchemeColor.onPrimary,
          bottomNavigationBarUnselectedIconSchemeColor: SchemeColor.onPrimary,
          bottomNavigationBarBackgroundSchemeColor: SchemeColor.primary,
          navigationBarBackgroundSchemeColor: SchemeColor.tertiaryContainer,
        ),
        visualDensity: FlexColorScheme.comfortablePlatformDensity,
        useMaterial3: true,
        swapLegacyOnMaterial3: true,
      ),
      darkTheme: FlexThemeData.dark(
        colors: const FlexSchemeColor(
          primary: Color(0xff5f1312),
          primaryContainer: Color(0xfff8f9ff),
          secondary: Color(0xffffb59d),
          secondaryContainer: Color(0xff872100),
          tertiary: Color(0xff86d2e1),
          tertiaryContainer: Color(0xff004e59),
          appBarColor: Color(0xff872100),
          error: Color(0xffcf6679),
        ),
        surfaceMode: FlexSurfaceMode.levelSurfacesLowScaffold,
        blendLevel: 15,
        subThemesData: const FlexSubThemesData(
          blendOnLevel: 20,
          inputDecoratorRadius: 23.0,
          inputDecoratorFocusedBorderWidth: 2.5,
          fabUseShape: true,
          fabRadius: 18.0,
          bottomNavigationBarSelectedLabelSchemeColor: SchemeColor.onPrimary,
          bottomNavigationBarUnselectedLabelSchemeColor: SchemeColor.onPrimary,
          bottomNavigationBarSelectedIconSchemeColor: SchemeColor.onPrimary,
          bottomNavigationBarUnselectedIconSchemeColor: SchemeColor.onPrimary,
          bottomNavigationBarBackgroundSchemeColor: SchemeColor.primary,
          navigationBarBackgroundSchemeColor: SchemeColor.tertiaryContainer,
        ),
        visualDensity: FlexColorScheme.comfortablePlatformDensity,
        useMaterial3: true,
        swapLegacyOnMaterial3: true,
        // To use the Playground font, add GoogleFonts package and uncomment
        // fontFamily: GoogleFonts.notoSans().fontFamily,
      ),
      routes: {
        NamedRoutes.homePage: (context) => const TabScreen(),
        NamedRoutes.categoryPage: (context) => const CategoryPage(),
        NamedRoutes.detailsPage: (context) => const DetailsPage(),
        NamedRoutes.settingsPage: (context) => const ConfigurationPage(),
      },
    );
  }
}
