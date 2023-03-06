class Settings {
  Settings({
    this.isGlutenFree = false,
    this.isLactoseFree = false,
    this.isVegan = false,
    this.isVegetarian = false,
    this.isNight = false,
  });

  bool isLactoseFree;
  bool isGlutenFree;
  bool isVegan;
  bool isVegetarian;
  bool isNight;

  static Settings settingsValues = Settings();
}
