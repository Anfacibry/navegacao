import 'package:flutter/material.dart';
import 'package:navegacao/models/categoria.dart';

class CategoriaItem extends StatelessWidget {
  final Categoria categoria;
  const CategoriaItem(
    this.categoria, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(categoria.title!),
    );
  }
}
