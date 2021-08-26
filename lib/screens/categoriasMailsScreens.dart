import 'package:flutter/material.dart';
import 'package:navegacao/models/categoria.dart';
import 'package:navegacao/models/meal.dart';
import 'package:navegacao/models/mealItem.dart';

class CategoriaMailsScreens extends StatelessWidget {
  final List<Meal> meals;
  final Categoria categoria;
  const CategoriaMailsScreens(this.categoria, this.meals, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final categoriaMaels = meals
        .where(
          (meal) => meal.categories!.contains(categoria.id),
        )
        .toList();
    return Scaffold(
      appBar: AppBar(
        title: Text(categoria.title!),
      ),
      body: ListView.builder(
        itemCount: categoriaMaels.length,
        itemBuilder: (ctx, index) => MealItem(categoriaMaels[index]),
      ),
    );
  }
}
