class Meal {
  const Meal({
    required this.categories,
    required this.id,
    required this.imageUrl,
    required this.duration,
    required this.ingredients,
    required this.steps,
    required this.isGlutenFree,
    required this.isLactoseFree,
    required this.isVegan,
    required this.isVegetarian,
    required this.complexity,
    required this.title,
    required this.cost,
  });

  final String id;
  final String title;
  final String imageUrl;
  final List<String> categories;
  final List<String> ingredients;
  final List<String> steps;
  final int duration;
  final bool isGlutenFree;
  final bool isLactoseFree;
  final bool isVegan;
  final bool isVegetarian;
  final Complexity complexity;
  final Cost cost;

  String getComplexity() {
    switch (complexity) {
      case Complexity.simple:
        return 'Dificuldade: simples';
      case Complexity.medium:
        return 'Dificuldade: médio';
      case Complexity.hard:
        return 'Dificuldade: difícil';
    }
  }
}

enum Complexity {
  simple,
  medium,
  hard,
}

enum Cost {
  cheap,
  fair,
  expensive,
}
