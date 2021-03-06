import 'package:flutter/material.dart';
import 'package:navegacao/components/categoria_item.dart';
import 'package:navegacao/data/dummy_data.dart';

class CategoriaScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView(
      padding: const EdgeInsets.all(10),
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 200,
        childAspectRatio: 2 / 1,
        crossAxisSpacing: 20,
        mainAxisSpacing: 20,
      ),
      children: LISTA_CATEGORIAS.map((cat) {
        return CategoriaItem(cat);
      }).toList(),
    );
  }
}
