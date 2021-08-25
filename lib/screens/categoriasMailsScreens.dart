import 'package:flutter/material.dart';
import 'package:navegacao/data/dummy_data.dart';
import 'package:navegacao/models/categoria.dart';
import 'package:navegacao/models/mealItem.dart';

class CategoriaMailsScreens extends StatelessWidget {
  final Categoria categoria;
  const CategoriaMailsScreens(this.categoria, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final categoriaMaels = LISTA_MEALS
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
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.favorite),
        onPressed: () {
          Navigator.of(context).pop(categoriaMaels);
        },
      ),
    );
  }
}
