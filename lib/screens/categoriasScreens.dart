import 'package:flutter/material.dart';
import 'package:navegacao/components/categoria_item.dart';
import 'package:navegacao/data/dummy_data.dart';

class CategoriaScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Vamos conzinhar!",
          style: Theme.of(context).textTheme.headline6,
        ),
      ),
      body: GridView(
        padding: const EdgeInsets.all(10),
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          childAspectRatio: 2 / 1,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
        ),
        children: listaCategorias.map((cat) {
          return CategoriaItem(cat);
        }).toList(),
      ),
    );
  }
}
